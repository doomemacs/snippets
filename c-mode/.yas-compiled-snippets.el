;;; Compiled snippets and support files for `c-mode'
;;; Snippet definitions:
;;;
(yas-define-snippets 'c-mode
                     '(("uni" "#include <unistd.h>" "unistd" nil nil nil "/home/hlissner/.config/doom/snippets/c-mode/unistd" nil nil)
                       ("union" "typedef union {\n        $0\n} ${1:name};" "union" nil nil nil "/home/hlissner/.config/doom/snippets/c-mode/union" nil nil)
                       ("switch" "switch (${1:ch}) {\n       case ${2:const}:\n       ${3:a = b};\n       break;\n       ${4:default:\n       ${5:action}}\n}\n" "switch" nil nil nil "/home/hlissner/.config/doom/snippets/c-mode/switch" nil nil)
                       ("string" "#include <string.h>" "string" nil nil nil "/home/hlissner/.config/doom/snippets/c-mode/string" nil nil)
                       ("stdlib" "#include <stdlib.h>" "stdlib" nil nil nil "/home/hlissner/.config/doom/snippets/c-mode/stdlib" nil nil)
                       ("stdio" "#include <stdio.h>" "stdio" nil nil nil "/home/hlissner/.config/doom/snippets/c-mode/stdio" nil nil)
                       ("p" "printf(\"${1:format}\"${2:, $3});" "printf" nil nil nil "/home/hlissner/.config/doom/snippets/c-mode/printf" nil nil)
                       ("packed" "__attribute__((__packed__))$0" "packed" nil nil nil "/home/hlissner/.config/doom/snippets/c-mode/packed" nil nil)
                       ("malloc" "malloc(sizeof($1)${2: * ${3:3}});\n$0" "malloc" nil nil nil "/home/hlissner/.config/doom/snippets/c-mode/malloc" nil nil)
                       ("fopen" "FILE *${f} = fopen(${\"file\"}, \"${r}\");" "FILE *fp = fopen(..., ...);" nil nil nil "/home/hlissner/.config/doom/snippets/c-mode/fopen" nil nil)
                       ("def" "#define $0" "define" nil nil nil "/home/hlissner/.config/doom/snippets/c-mode/define" nil nil)
                       ("compile" "// -*- compile-command: \"${1:gcc -Wall -o ${2:dest} ${3:file}}\" -*-" "compile" nil nil nil "/home/hlissner/.config/doom/snippets/c-mode/compile" nil nil)
                       ("ass" "#include <assert.h>\n$0" "assert" nil nil nil "/home/hlissner/.config/doom/snippets/c-mode/assert" nil nil)))


;;; Do not edit! File generated at Wed Mar 13 18:35:12 2019
