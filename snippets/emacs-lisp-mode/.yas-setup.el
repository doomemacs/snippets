;;; emacs-lisp-mode/.yas-setup.el

(defvar doom-modules-dir)

(defvar emacs-snippets-autoload-function-alist
  '((evil-define-command)
    (evil-define-motion)
    (evil-define-operator)
    ;; doom macros
    (def-menu!)
    ;; other plugins
    (defhydra . "%s/body"))
  "An alist that maps special forms to function name format strings.")

(defun %emacs-lisp-evil-autoload ()
  "Generate an autoload function for special Doom and evil macros."
  (let ((form (save-excursion (beginning-of-line 2)
                              (sexp-at-point))))
    (when (and form
               (listp form)
               (assq (car form) emacs-snippets-autoload-function-alist)
               (require 'autoload)
               (not (make-autoload form buffer-file-name)))
      (format " (autoload '%s \"%s\" nil %s)"
              (let ((format (cdr (assq (car form) emacs-snippets-autoload-function-alist))))
                (if format
                    (intern (format format (cadr form)))
                  (cadr form)))
              (file-relative-name
               (file-name-sans-extension buffer-file-name)
               (cond ((file-in-directory-p buffer-file-name doom-modules-dir)
                      (file-truename doom-modules-dir))
                     ((file-in-directory-p buffer-file-name doom-private-dir)
                      (file-truename doom-private-dir))
                     ((doom-project-root))))
              (if (cl-some (lambda (x) (eq (if (listp x) (car x) x) 'interactive)) form)
                  "t"
                "nil")))))
