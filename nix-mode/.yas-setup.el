;;; ~/work/conf/doom-emacs-private/snippets/nix-mode/.yas-setup.el -*- lexical-binding: t; -*-

(defun %nix-mode-if-parent (name &optional else)
  (if (%nix-mode-in-block-p name)
      (or else "")
    (concat name ".")))

(defun %nix-mode-in-block-p (name)
  (if (not (fboundp 'evil-previous-open-brace))
      nil ; TODO Add non-evil support
    (save-excursion
      (evil-previous-open-brace)
      (re-search-backward (format "^\\s-*%s\\s-*=" name) (line-beginning-position) t))))
