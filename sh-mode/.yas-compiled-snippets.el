;;; Compiled snippets and support files for `sh-mode'
;;; Snippet definitions:
;;;
(yas-define-snippets 'sh-mode
                     '(("=" "${1:VAR}=${0:VALUE}" "VAR=value" nil nil nil "/home/hlissner/.config/doom/snippets/sh-mode/var" nil nil)
                       ("<" "\"$1\" -lt \"$2\"\n" "Less than" nil nil nil "/home/hlissner/.config/doom/snippets/sh-mode/lt" nil nil)
                       ("local" "local ${1:var}=${0:value}\n" "local var=value" nil nil nil "/home/hlissner/.config/doom/snippets/sh-mode/local" nil nil)
                       ("ife" "if ${1:condition}; then\n    `%`${2:# code}\nelse\n     $0\nfi" "ife" nil nil nil "/home/hlissner/.config/doom/snippets/sh-mode/ife" nil nil)
                       ("if;" "${1:condition} && ${0:echo 1}\n" "if ...; then ...; fi" nil nil nil "/home/hlissner/.config/doom/snippets/sh-mode/if-one-line" nil nil)
                       ("if" "if $1; then\n   `%`$0\nfi\n" "if" nil nil nil "/home/hlissner/.config/doom/snippets/sh-mode/if" nil nil)
                       (">" "\"$1\" -gt \"$2\"\n" "Greater than" nil nil nil "/home/hlissner/.config/doom/snippets/sh-mode/gt" nil nil)
                       ("getopts" "while getopts \"${1:s:h:}\" o; do\n      case \"$o\" in\n           ${2:X}) `(!%)`$0\n              ;;\n           *) usage\n              ;;\n      esac\ndone" "getopts" nil nil nil "/home/hlissner/.config/doom/snippets/sh-mode/getopts" nil nil)
                       ("f;" "${1:name}() { `(!%!)`$0; }" "one-line function" nil nil nil "/home/hlissner/.config/doom/snippets/sh-mode/function-one-line" nil nil)
                       ("function" "function ${1:name} {\n    `%`$0\n}" "function" nil nil nil "/home/hlissner/.config/doom/snippets/sh-mode/function" nil nil)
                       ("for;" "for ${1:var} in ${2:stuff}; do `(!%!)`$0; done\n" "for loop (one line)" nil nil nil "/home/hlissner/.config/doom/snippets/sh-mode/for-one-line" nil nil)
                       ("for" "for ${1:var} in ${2:stuff}; do\n    `%`$0\ndone" "for loop" nil nil nil "/home/hlissner/.config/doom/snippets/sh-mode/for" nil nil)
                       ("f" "${1:name}() {\n    `%`$0\n}\n" "short function" nil nil nil "/home/hlissner/.config/doom/snippets/sh-mode/f" nil nil)
                       ("else" "else\n    `%`$0" "else" nil nil nil "/home/hlissner/.config/doom/snippets/sh-mode/else" nil nil)
                       ("elif" "elif ${1:condition}; then\n    `%`$0" "elif" nil nil nil "/home/hlissner/.config/doom/snippets/sh-mode/elif" nil nil)
                       ("case" "case ${1:var} in\n    ${2:match}) $0 ;;\nesac" "case" nil nil nil "/home/hlissner/.config/doom/snippets/sh-mode/case" nil nil)
                       ("#!" "#!${1:/usr/bin/env `(symbol-name sh-shell)`}\n$0" "bang" nil nil nil "/home/hlissner/.config/doom/snippets/sh-mode/bang" nil nil)
                       ("args" "[ $# -lt ${1:2} ]" "args" nil nil nil "/home/hlissner/.config/doom/snippets/sh-mode/args" nil nil)
                       ("alias" "alias ${1:cmd}=$0" "alias" nil nil nil "/home/hlissner/.config/doom/snippets/sh-mode/alias" nil nil)))


;;; Do not edit! File generated at Wed Mar 13 18:35:13 2019
