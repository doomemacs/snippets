;;; emacs-lisp-mode/.yas-setup.el

(defvar doom-modules-dir)

(defun %emacs-lisp-evil-autoload ()
  "Generate an autoload function for evil-define-* functions."
  (when (file-in-directory-p buffer-file-name doom-modules-dir)
    (let* ((sexp (or (save-excursion (beginning-of-line 2)
                                     (thing-at-point 'sexp))
                     ""))
           (form (ignore-errors (read sexp))))
      (when (and form
                 (listp form)
                 (memq (car form) '(evil-define-command evil-define-operator))
                 (require 'autoload)
                 (not (make-autoload form buffer-file-name)))
        (format " (autoload '%s \"%s\" nil %s)"
                (cadr form)
                (file-relative-name
                 (file-name-sans-extension buffer-file-name)
                 (when (file-in-directory-p buffer-file-name doom-modules-dir)
                   doom-modules-dir))
                (if (cl-some (lambda (x) (eq (if (listp x) (car x) x) 'interactive)) form)
                    "t"
                  "nil"))))))
