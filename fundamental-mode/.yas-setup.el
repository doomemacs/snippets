;; -*- no-byte-compile: t; -*-

(eval-and-compile
  (when (version< emacs-version "26")
    (with-no-warnings
      (defalias 'if-let* #'if-let)
      (defalias 'when-let* #'when-let))))

(setq yas-wrap-around-region nil)

;; Simpler `yas-selected-text' alias for templates
(defvaralias '% 'yas-selected-text)

(defun %% (&optional default)
  "Used in snippets. Either display the selected text or DEFAULT."
  (or % default ""))

(defun !%! ()
  "Used in snippets. Shorthand defun to surround text with newlines if more than
one line."
  (when %
    (if (> (%lines %) 1)
        (concat "\n" % "\n")
      (string-trim %))))

(defun !% ()
  "Used in snippets. Shorthand defun for snippets: prepends a newline to
`yas-selected-text' IF it contains more than one line."
  (when %
    (if (> (%lines %) 1)
        (concat "\n" %)
      (string-trim %))))

(defun %1 ()
  "Used in snippets. Trim selection; do no further processing."
  (if % (string-trim %)))

(defun %$ ()
  "Used in snippets. Insert newline here if at `eolp'."
  (unless (eolp)
    "\n"))

(defun %lines (str)
  "Return how many lines are in STR."
  (if (and (stringp str)
           (not (string-empty-p str)))
      (length (split-string str "\\(\r\n\\|[\n\r]\\)"))
    0))

(defmacro %without-trigger (&rest body)
  "Preform BODY after moving over the trigger keyword. Without this, tests like
(bolp) would meaninglessly fail because the cursor is always in front of the
word that triggered this snippet."
  `(progn
     (unless (eq (char-before) ? )
       (backward-word))
     ,@body))

(defun %bolp ()
  "Return t if at beginning of indentation (i.e. only preceded by whitespace)."
  (or (bolp)
      (save-excursion
        (if (region-active-p)
            (goto-char (region-beginning))
          (unless (eq (char-before) ? )
            (backward-word)))
        (skip-chars-backward " \t")
        (bolp))))

(defun %alias (uuid &optional mode)
  "Expand a snippet with UUID in MODE."
  (if-let* ((snippet (let ((yas-choose-tables-first nil) ; avoid prompts
                           (yas-choose-keys-first nil))
                       (cl-loop for tpl in (yas--all-templates
                                            (yas--get-snippet-tables mode))
                                if (string= uuid (yas--template-uuid tpl))
                                return tpl))))
      (yas-expand-snippet snippet)
    (error "Couldn't find snippet" &optional ARGS)))
