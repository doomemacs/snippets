;;; emacs-snippets.el --- A collection of yasnippet snippets
;;
;; Copyright (C) 2017-18 Henrik Lissner
;;
;; Author: Henrik Lissner <henrik@lissner.net>
;; Keywords: snippets
;; Created: December 5, 2014
;; Modified: June 7, 2018
;; Version: 1.0.3
;; Package-Requires: ((emacs "25.3") (cl-lib "0.5") (yasnippet "0.12.0"))
;; Keywords: convenience, snippets
;;
;; This file is not part of GNU Emacs.
;;
;;; Commentary:
;;
;; Official snippet collection for Doom Emacs. See
;; https://github.com/hlissner/doom-emacs.
;;
;;; Code:

(eval-when-compile
  (require 'cl-lib)
  (require 'yasnippet))

(defvar emacs-snippets-dir
  (file-name-directory (or load-file-name buffer-file-name))
  "TODO")

;;;###autoload
(defun emacs-snippets-initialize ()
  "Add `emacs-snippets-dir' to `yas-snippet-dirs', replacing the default
yasnippet directory."
  (unless (memq 'emacs-snippets-dir yas-snippet-dirs)
    (setq yas-snippet-dirs
          (append (list 'emacs-snippets-dir)
                  ;; These are meant to replace the built-in snippets.
                  (delete yas--default-user-snippets-dir yas-snippet-dirs)))))

;;;###autoload
(eval-after-load 'yasnippet
  `(emacs-snippets-initialize))

(provide 'emacs-snippets)
;;; emacs-snippets.el ends here
