(defun ca-all-asscs (asslist query)
  "returns a list of all corresponding values (like rassoc)"
  (cond
   ((null asslist) nil)
   (t
    (if (equal (cdr (car asslist)) query)
        (cons (car (car asslist)) (ca-all-asscs (cdr asslist) query))
      (ca-all-asscs (cdr asslist) query)))))

(defun % (&optional default)
  "Used in snippets. Either display the selected text or DEFAULT."
  (or % default))

(defun !%! ()
  "Used in snippets. Shorthand defun to surround text with newlines if more than one
line."
  (when %
    (if (> (length (s-lines %)) 1)
        (concat "\n" % "\n")
      (s-trim %))))

(defun !% ()
  "Used in snippets. Shorthand defun for snippets: prepends a newline to
  `yas-selected-text' IF it contains more than one line."
  (when %
    (if (> (length (s-lines %)) 1)
        (concat "\n" %)
      (s-trim %))))

(defun %1 ()
  "Used in snippets. Trim selection; do no further processing."
  (s-trim %))

(defun %$ ()
  "Used in snippets. Insert newline here if at `eolp'."
  (unless (eolp)
    (insert "\n")))
