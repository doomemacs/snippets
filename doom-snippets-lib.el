;;; doom-snippets-lib.el -*- lexical-binding: t; -*-

(eval-and-compile
  (require 'cl-lib)
  (require 'yasnippet))

;; Simpler `yas-selected-text' alias for templates
(defvaralias '% 'yas-selected-text)
(when doom-snippets-enable-short-helpers
  (defalias '!%! 'doom-snippets-newline-selected-newline)
  (defalias '!% 'doom-snippets-newline-selected)
  (defalias '%1 'doom-snippets-newline-selected)
  (defalias '%$ 'doom-snippets-newline-selected))


(defmacro doom-snippets-without-trigger (&rest body)
  "Preform BODY after moving over the trigger keyword.
Without this, tests like `bolp' would meaninglessly fail because the cursor is
always in front of the word that triggered this snippet."
  `(progn
     (unless (memq (char-before) (list ?\  ?\n))
       (backward-word))
     ,@body))


(defun doom-snippets-newline-selected-newline ()
  "Used in snippets. Shorthand defun to surround text with newlines if more than
one line."
  (doom-snippets-format "%!%s%!" nil t))

(defun doom-snippets-newline-selected ()
  "Used in snippets. Shorthand defun for snippets: prepends a newline to
`yas-selected-text' IF it contains more than one line."
  (doom-snippets-format "%!%s" nil t))

(defun doom-snippets-text (&optional default trim)
  "TODO"
  (let ((text (or yas-selected-text default "")))
    (if trim
        (string-trim text)
      text)))

(defun doom-snippets-format (format &optional default trim)
  "TODO"
  (let* ((text (or yas-selected-text default ""))
         (text (if trim (string-trim text) text)))
    (format-spec format
                 `((?s . ,text)
                   (?! . ,(if (> (doom-snippets-count-lines text) 1) "\n" ""))
                   (?> . ,(if (eolp) "" "\n"))
                   ))))

(defun doom-snippets-newline-or-eol ()
  "Used in snippets. Insert newline here if at `eolp'."
  (doom-snippets-format "%>"))

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
          (unless (eq (char-before) ? )
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
                            if (string= uuid
                                        (pcase property
                                          (:uuid (yas--template-uuid tpl))
                                          (:name (yas--template-name tpl))
                                          (:key  (yas--template-key tpl))
                                          (:file (yas--template-load-file tpl))))
                            return tpl))))
    (if snippet
        (yas-expand-snippet snippet)
      (error "Couldn't find snippet" &optional ARGS))))

(provide 'doom-snippets-lib)
;;; doom-snippets-lib.el ends here
