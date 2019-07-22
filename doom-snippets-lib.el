;;; doom-snippets-lib.el -*- lexical-binding: t; -*-

(eval-when-compile
  (require 'cl-lib))
(eval-and-compile
  (require 'yasnippet))

;; Simpler `yas-selected-text' alias for templates
(defvaralias '% 'yas-selected-text)
(when doom-snippets-enable-short-helpers
  (defalias '!%! 'doom-snippets-newline-selected-newline)
  (defalias '!% 'doom-snippets-newline-selected)
  (defalias '%$ 'doom-snippets-newline-or-eol)
  (defalias '%without-trigger 'doom-snippets-without-trigger)
  (defalias '%format 'doom-snippets-format)
  (defalias '%expand 'doom-snippets-expand))


(defmacro doom-snippets-without-trigger (&rest body)
  "Preform BODY after moving over the trigger keyword.
Without this, tests like `bolp' would meaninglessly fail because the cursor is
always in front of the word that triggered this snippet."
  `(progn
     (unless (memq (char-before) (list ?\  ?\n))
       (backward-word))
     ,@body))

(defun doom-snippets-text (&optional default trim)
  "Return `yas-selected-text' (or `default').

If TRIM is non-nil, trim leading and trailing whitespace from
`yas-selected-text'/`default'."
  (let ((text (or yas-selected-text default "")))
    (if trim
        (string-trim text)
      text)))

(defun doom-snippets-format (format &optional default trim)
  "Returns a formatted string.

Like `format', but with a custom spec:

  %s  The contents of your current selection (`yas-selected-text`)
  %n  A newline, if your current selection spans more than a single line
  %e  A newline, unless the point is at EOL

If `yas-selected-text` is empty, `DEFAULT` is used.

If `TRIM` is non-nil, whitespace on the ends of `yas-selected-text` is
trimmed."
  (let* ((text (or yas-selected-text default ""))
         (text (if trim (string-trim text) text)))
    (format-spec format
                 `((?s . ,text)
                   (?n . ,(if (> (doom-snippets-count-lines text) 1) "\n" ""))
                   (?e . ,(if (eolp) "" "\n"))
                   ))))

(defun doom-snippets-newline-selected-newline ()
  "Return `yas-selected-text' surrounded with newlines if it consists of more
than one line."
  (doom-snippets-format "%n%s%n" nil t))

(defun doom-snippets-newline-selected ()
  "Return `yas-selected-text' prefixed with a newline if it consists of more
than one line."
  (doom-snippets-format "%n%s" nil t))

(defun doom-snippets-newline-or-eol ()
  "Return newline, unless at `eolp'."
  (doom-snippets-format "%e"))

(defun doom-snippets-count-lines (str)
  "Return how many lines are in STR."
  (if (and (stringp str)
           (not (string-empty-p str)))
      (length (split-string str "\\(\r\n\\|[\n\r]\\)"))
    0))

(defun doom-snippets-bolp ()
  "Return t if point is preceded only by indentation.

Unlike `bolp', this ignores the trigger word for the current snippet."
  (or (bolp)
      (save-excursion
        (if (region-active-p)
            (goto-char (region-beginning))
          (unless (memq (char-before) (list ?\  ?\n))
            (backward-word)))
        (skip-chars-backward " \t")
        (bolp))))

(defun doom-snippets-expand (property value &optional mode)
  "Expand a snippet whose PROPERTY equals VALUE in MODE.

PROPERTY can be one of :uuid, :name, :key, or :file, and VALUE must be the
uuid/name/key/(absolute) filepath of the template you want to expand."
  (let ((snippet (let ((yas-choose-tables-first nil) ; avoid prompts
                       (yas-choose-keys-first nil))
                   (cl-loop for tpl in (yas--all-templates
                                        (yas--get-snippet-tables mode))
                            if (string= value
                                        (pcase property
                                          (:uuid (yas--template-uuid tpl))
                                          (:name (yas--template-name tpl))
                                          (:key  (yas--template-key tpl))
                                          (:file (yas--template-load-file tpl))))
                            return tpl))))
    (if snippet
        (yas-expand-snippet snippet)
      (error "Couldn't find %S snippet" value))))

(provide 'doom-snippets-lib)
;;; doom-snippets-lib.el ends here
