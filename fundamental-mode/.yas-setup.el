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

(defun %bolp ()
  "Return t if at beginning of indentation (i.e. only preceded by whitespace)."
  (save-excursion
    (when (region-active-p)
      (goto-char (region-beginning)))
    (skip-chars-backward " \t")
    (bolp)))

(defun %alias (name &optional mode)
  "Expand a snippet with the trigger NAME, from MODE."
  (if-let* ((snippet (let ((yas-choose-tables-first nil) ; avoid prompts
                           (yas-choose-keys-first nil))
                       (cl-loop with template = (yas--all-templates
                                                 (yas--get-snippet-tables mode))
                                for tpl in templates
                                if (string= name (yas--template-uid tpl))
                                return tpl))))
      (yas-expand-snippet snippet)
    (error "Couldn't find snippet" &optional ARGS)))
