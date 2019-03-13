;;; Compiled snippets and support files for `slim-mode'
;;; Snippet definitions:
;;;
(yas-define-snippets 'slim-mode
                     '(("ul." "ul\n  `%`$0\n" "ul ..." nil nil nil "/home/hlissner/.config/doom/snippets/slim-mode/uldot" nil nil)
                       ("scriptsrc" "script src=\"${1:lib.js}\"" "script src=\"...\"" nil nil nil "/home/hlissner/.config/doom/snippets/slim-mode/scriptsrc" nil nil)
                       ("ol." "ol\n  `%`$0\n" "ol ..." nil nil nil "/home/hlissner/.config/doom/snippets/slim-mode/oldot" nil nil)
                       ("mkd" "markdown:\n  `%`$0\n" "markdown" nil nil nil "/home/hlissner/.config/doom/snippets/slim-mode/mkd" nil nil)
                       ("link" "link rel=\"${1:stylesheet}\" type=\"${2:text/css}\" href=\"${3:/css/master.css}\"" "link ..." nil nil nil "/home/hlissner/.config/doom/snippets/slim-mode/link" nil nil)
                       ("li." "li\n  `%`$0\n" "li ..." nil nil nil "/home/hlissner/.config/doom/snippets/slim-mode/lidot" nil nil)
                       ("js" "javascript:\n  $0\n" "javascript: ..." nil nil nil "/home/hlissner/.config/doom/snippets/slim-mode/js" nil nil)
                       ("html" "doctype html\nhtml(lang=\"en\")\n  head\n    meta charset=\"utf-8\"\n    title ${1:Page Title}\n  body\n    $0\n    " "HTML page skeleton"
                        (bobp)
                        nil nil "/home/hlissner/.config/doom/snippets/slim-mode/html" nil nil)
                       ("desc" "meta name=\"description\" content=\"$0\"" "meta name=\"description\"" nil nil nil "/home/hlissner/.config/doom/snippets/slim-mode/desc" nil nil)
                       ("cdn-modernizr.min.js" "script src=\"https://cdnjs.cloudflare.com/ajax/libs/modernizr/${1:2.8.3}/modernizr.min.js\"" "script src=\"https://cdn.js.cloudflare.com/.../modernizr.min.js\"" nil nil nil "/home/hlissner/.config/doom/snippets/slim-mode/cdn-modernizr.min.js" nil nil)))


;;; Do not edit! File generated at Wed Mar 13 18:35:13 2019
