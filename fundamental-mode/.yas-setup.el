(defun ca-all-asscs (asslist query)
  "returns a list of all corresponding values (like rassoc)"
  (cond
   ((null asslist) nil)
   (t
    (if (equal (cdr (car asslist)) query)
        (cons (car (car asslist)) (ca-all-asscs (cdr asslist) query))
      (ca-all-asscs (cdr asslist) query)))))

(defun !%! ()
  "Snippet function. Shorthand defun to surround text with newlines if more
than one line."
  (when %
    (if (> (length (s-lines %)) 1)
        (concat "\n" % "\n")
      (s-trim %))))

(defun !% ()
  "Snippet function. Shorthand defun for snippets: prepends a newline to
  `yas-selected-text' IF it contains more than one line."
  (when %
    (if (> (length (s-lines %)) 1)
        (concat "\n" %)
      (s-trim %))))

(defun %1 ()
  "Trim selection; do no further processing."
  (s-trim %))
