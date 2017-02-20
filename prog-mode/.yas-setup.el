;; -*- no-byte-compile: t; -*-

(defun yas-with-comment (str)
  (format "%s%s%s" comment-start str comment-end))

(defun yas-with-padded-comment (str)
  (let* ((com-start (if (eq major-mode 'emacs-lisp-mode) ";; " comment-start))
         (com-end (if (eq comment-end "") com-start comment-end)))
    (format "%s%s%s%s" com-start str
            (make-string (- fill-column (+ (length com-start) (length com-end) (length str))) ? )
            com-end)))

(defun yas-make-line ()
  (let ((mid-char (string-to-char (if (equal comment-padding " ")  comment-start comment-padding))))
    (format "%s%s%s" comment-start
            (make-string (- fill-column (+ 1 (length comment-start) (length comment-end))) mid-char)
            (or comment-end mid-char)
            )))
