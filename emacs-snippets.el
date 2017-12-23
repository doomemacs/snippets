;;; emacs-snippets.el --- A collection of yasnippet snippets

;; Copyright (C) 2017-18 Henrik Lissner
;;
;; Author: Henrik Lissner <henrik@lissner.net>
;; Keywords: snippets
;; Version: 1.0.0
;; Package-Requires: ((yasnippet "0.8.0"))
;; Keywords: convenience, snippets
;;
;;; Commentary:
;;
;; Official snippet collection for Doom Emacs. See
;; https://github.com/hlissner/doom-emacs.
;;
;;; Code:

(defvar emacs-snippets-dir
  (expand-file-name
   "snippets"
   (file-name-directory
    (cond (load-in-progress load-file-name)
          ((and (boundp 'byte-compile-current-file)
                byte-compile-current-file)
           byte-compile-current-file)
          (t (buffer-file-name)))))
  "TODO")

;;;###autoload
(defun emacs-snippets-initialize ()
  "TODO"
  (add-to-list 'yas-snippet-dirs 'emacs-snippets-dir)
  (yas-load-directory emacs-snippets-dir))

;;;###autoload
(eval-after-load 'yasnippet
  `(emacs-snippets-initialize))

(provide 'emacs-snippets)
;;; emacs-snippets.el ends here
