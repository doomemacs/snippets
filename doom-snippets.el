;;; doom-snippets.el --- A collection of yasnippet snippets
;;
;; Copyright (C) 2017-21 Henrik Lissner
;;
;; Author: Henrik Lissner <contact@henrik.io>
;; Created: December 5, 2014
;; Modified: July 14, 2019
;; Version: 1.1.0
;; Keywords: convenience, snippets
;; Homepage: https://github.com/hlissner/doom-snippets
;; Package-Requires: ((emacs "24.4") (cl-lib "0.5") (yasnippet "0.12.0"))
;;
;; This file is not part of GNU Emacs.
;;
;;; Commentary:
;;
;; Official snippet collection for Doom Emacs. See
;; https://github.com/hlissner/doom-emacs.
;;
;;; Code:

(defvar doom-snippets-dir
  (file-name-directory
   (cond (load-in-progress load-file-name)
         ((bound-and-true-p byte-compile-current-file)
          byte-compile-current-file)
         (buffer-file-name)))
  "The base directory of the doom-snippets library.")

(defvar doom-snippets-enable-short-helpers nil
  "If non-nil, defines convenience aliases for doom-snippets' api.

+ `!%!' = (doom-snippets-format \"%n%s%n\")
+ `!%' = (doom-snippets-format \"%n%s\")
+ `%$' = (doom-snippets-format \"%e\")
+ `%expand' = `doom-snippets-expand'
+ `%format' = `doom-snippets-format'
+ `%without-trigger' = `doom-snippets-without-trigger'")

;;;###autoload
(defun doom-snippets-remove-compiled-snippets ()
  "Delete all .yas-compiled-snippets.el files."
  (interactive)
  (let ((default-directory doom-snippets-dir))
    (dolist (file (file-expand-wildcards "*/.yas-compiled-snippets.el"))
      (delete-file file)
      (message "Deleting %s" file))))

;;;###autoload
(defun doom-snippets-initialize ()
  "Add `doom-snippets-dir' to `yas-snippet-dirs', replacing the default
yasnippet directory."
  (setq yas-wrap-around-region nil)
  (add-to-list 'yas-snippet-dirs 'doom-snippets-dir)
  (yas-load-directory doom-snippets-dir t))

;;;###autoload
(eval-after-load 'yasnippet
  (lambda () (doom-snippets-initialize)))

(provide 'doom-snippets)
;;; doom-snippets.el ends here
