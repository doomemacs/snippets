;;; julia-mode/.yas-setup.el -*- lexical-binding: t; -*-

(defun yas-julia-doc-args ()
  "Format arguments of a function slightly nicer for the doc string"
  (replace-regexp-in-string "\\([:blank:]*[,;]?*[^,;=]+=[[:ascii:][:nonascii:]]+\\)" "[\\1]" yas-text))
