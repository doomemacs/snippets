;;; ~/Repos/bennetis_dotfiles/emacs/.doom.d/snippets/julia-mode/.yas-setup.el -*- lexical-binding: t; -*-



(require 'yasnippet)

(defun yas-julia-iteration-keyword-choice ()
  "Choose the iteration keyword for for-loop"
  (yas-choose-value '("=" "in" "∈")))
(defun yas-julia-doc-args ()
  "Format arguments of a function slightly nicer for the doc string"
  (replace-regexp-in-string "\\([:blank:]*[,;]?*[^,;=]+=[[:ascii:][:nonascii:]]+\\)" "[\\1]" yas-text))
