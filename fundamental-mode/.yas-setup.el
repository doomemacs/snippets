;; -*- no-byte-compile: t; -*-

(setq yas-wrap-around-region nil)

;; Simpler `yas-selected-text' alias for templates
(defvaralias '% 'yas-selected-text)

(defun ca-all-asscs (asslist query)
  "returns a list of all corresponding values (like rassoc)"
  (cond
   ((null asslist) nil)
   (t
    (if (equal (cdr (car asslist)) query)
        (cons (car (car asslist)) (ca-all-asscs (cdr asslist) query))
      (ca-all-asscs (cdr asslist) query)))))

(defun %% (&optional default)
  "Used in snippets. Either display the selected text or DEFAULT."
  (or % default))

(defun !%! ()
  "Used in snippets. Shorthand defun to surround text with newlines if more than one
line."
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
  "Return how many lines are in STR"
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
  "Expand a snippet with the trigger NAME, in MODE."
  (if-let (snippet (let ((yas-choose-tables-first nil)   ; avoid prompts
                           (yas-choose-keys-first nil))
                       (cl-find name (yas--all-templates
                                      (yas--get-snippet-tables mode))
                                :key #'yas--template-uuid :test #'string=)))
      (yas-expand-snippet (yas--template-content snippet))
    (error "Couldn't find snippet" &optional ARGS)))
