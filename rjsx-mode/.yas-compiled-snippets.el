;;; Compiled snippets and support files for `rjsx-mode'
;;; Snippet definitions:
;;;
(yas-define-snippets 'rjsx-mode
                     '(("ul" "<ul>\n    <li>`(!%!)`$0</li>\n</ul>" "ul > li" nil nil nil "/home/hlissner/.config/doom/snippets/rjsx-mode/ul" nil nil)
                       ("<" "<${1:div}>${0:`(!%!)`}</$1>" "HTML/JSX tag" nil nil nil "/home/hlissner/.config/doom/snippets/rjsx-mode/tag" nil nil)
                       ("div" "<div>${0:`%`}</div>" "<div></div>" nil nil nil "/home/hlissner/.config/doom/snippets/rjsx-mode/div" nil nil)
                       ("</" "<${1:div} `%`$0/>" "HTML/JSX self-closed tag" nil nil nil "/home/hlissner/.config/doom/snippets/rjsx-mode/closed-tag" nil nil)))


;;; Do not edit! File generated at Wed Mar 13 18:35:12 2019
