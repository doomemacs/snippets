;;; Compiled snippets and support files for `css-mode'
;;; Snippet definitions:
;;;
(yas-define-snippets 'css-mode
                     '((":" "${1:prop}: ${2:`%`};" "...: ...;" nil nil nil "/home/hlissner/.config/doom/snippets/css-mode/property" nil nil)
                       ("pad" "padding: ${1:10px};" "padding: ...;" nil nil nil "/home/hlissner/.config/doom/snippets/css-mode/padding" nil nil)
                       ("media_print" "@media print {\n    `%`$0\n}" "@media print { ... }" nil nil nil "/home/hlissner/.config/doom/snippets/css-mode/media_print" nil nil)
                       ("media_orientation" "(orientation: ${1:landscape})" "@media (orientation: ?)"
                        (looking-back "@media "
                                      (line-beginning-position))
                        nil nil "/home/hlissner/.config/doom/snippets/css-mode/media_orientation" nil nil)
                       ("med" "@media ${1:screen} {\n    `%`$0\n}" "@media" nil nil nil "/home/hlissner/.config/doom/snippets/css-mode/media" nil nil)
                       ("mar" "margin: ${1:0 auto};" "margin: ...;" nil nil nil "/home/hlissner/.config/doom/snippets/css-mode/margin" nil nil)
                       ("impurl" "@import url(\"`(%1)`$0\");" "@import url(...)" nil nil nil "/home/hlissner/.config/doom/snippets/css-mode/importurl" nil nil)
                       ("impfont" "@import url(\"http://fonts.googleapis.com/css?family=${1:Open+Sans}\");" "@import url(\"//fonts.googleapis...\")" nil nil nil "/home/hlissner/.config/doom/snippets/css-mode/importfont" nil nil)
                       ("imp" "@import \"`(%1)`$0\";" "@import" nil nil nil "/home/hlissner/.config/doom/snippets/css-mode/import" nil nil)))


;;; Do not edit! File generated at Wed Mar 13 18:35:12 2019
