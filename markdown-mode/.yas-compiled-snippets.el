;;; Compiled snippets and support files for `markdown-mode'
;;; Snippet definitions:
;;;
(yas-define-snippets 'markdown-mode
                     '(("utf8" "<meta http-equiv='Content-Type' content='text/html; charset=utf-8' />\n$0" "utf-8 encoding" nil nil nil "/home/hlissner/.config/doom/snippets/markdown-mode/utf8" nil nil)
                       ("rlink" "[${1:`%`Link Text}][$2]$0" "Reference Link" nil nil nil "/home/hlissner/.config/doom/snippets/markdown-mode/rlink" nil nil)
                       ("rlb" "[${1:Reference}]: ${2:URL} $3\n$0\n" "Reference Label" nil nil nil "/home/hlissner/.config/doom/snippets/markdown-mode/rlb" nil nil)
                       ("rimg" "![${1:Alt Text}][$2]$0" "Referenced Image" nil nil nil "/home/hlissner/.config/doom/snippets/markdown-mode/rimg" nil nil)
                       ("ol" "${1:1}. ${2:Text}\n${1:$(number-to-string (1+ (string-to-number %)))}. $0" "Ordered List" nil nil nil "/home/hlissner/.config/doom/snippets/markdown-mode/ol" nil nil)
                       ("link" "[${1:`(or % \"text\")`}](${2:http://$3})$0" "Link" nil nil nil "/home/hlissner/.config/doom/snippets/markdown-mode/link" nil nil)
                       ("kbd" "<kbd>$0</kbd>" "<kbd>...</kbd>" nil nil nil "/home/hlissner/.config/doom/snippets/markdown-mode/kbd" nil nil)
                       ("img" "![${1:Alt Text}](${2:`%`URL})$0" "Image" nil nil nil "/home/hlissner/.config/doom/snippets/markdown-mode/img" nil nil)
                       ("---" "-------------------------------------------------------------------------------" "hr" nil nil nil "/home/hlissner/.config/doom/snippets/markdown-mode/hr" "direct-keybinding" nil)
                       ("h6" "###### ${1:Header 6}`(unless markdown-asymmetric-header \" ######\")`" "Header 6" nil nil nil "/home/hlissner/.config/doom/snippets/markdown-mode/h6" nil nil)
                       ("h5" "##### ${1:Header 5}`(unless markdown-asymmetric-header \" #####\")`" "Header 5" nil nil nil "/home/hlissner/.config/doom/snippets/markdown-mode/h5" nil nil)
                       ("h4" "#### ${1:Header 4}`(unless markdown-asymmetric-header \" ####\")`" "Header 4" nil nil nil "/home/hlissner/.config/doom/snippets/markdown-mode/h4" nil nil)
                       ("h3" "### ${1:Header 3}`(unless markdown-asymmetric-header \" ###\")`" "Header 3" nil nil nil "/home/hlissner/.config/doom/snippets/markdown-mode/h3" nil nil)
                       ("h2" "## ${1:Header 2}`(unless markdown-asymmetric-header \" ##\")`" "Header 2 (##)" nil nil nil "/home/hlissner/.config/doom/snippets/markdown-mode/h2" nil nil)
                       ("h1" "# ${1:Header 1}`(unless markdown-asymmetric-header \" #\")`" "Header 1 (#)" nil nil nil "/home/hlissner/.config/doom/snippets/markdown-mode/h1" nil nil)
                       ("code" "\\`\\`\\`${1:lang}\n`%`$0\n\\`\\`\\`" "Code block" nil nil nil "/home/hlissner/.config/doom/snippets/markdown-mode/code" nil nil)))


;;; Do not edit! File generated at Wed Mar 13 18:35:12 2019
