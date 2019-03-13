;;; Compiled snippets and support files for `snippet-mode'
;;; Snippet definitions:
;;;
(yas-define-snippets 'snippet-mode
                     '(("#" "# -*- mode: snippet -*-\n# name: $1\n# key: ${2:trigger-key}${3:\n# condition: t}\n# --\n$0\n" "Snippet header" nil nil nil "/home/hlissner/.config/doom/snippets/snippet-mode/vars" nil nil)
                       ("mirror" "\\${${2:n}:${4:\\$(${5:reflection-fn})}\\}$0" "${n:$(...)} mirror" nil nil nil "/home/hlissner/.config/doom/snippets/snippet-mode/mirror" nil nil)
                       ("group" "# group : ${1:group}" "group" nil nil nil "/home/hlissner/.config/doom/snippets/snippet-mode/group" nil nil)
                       ("field" "\\${${1:${2:n}:}$3${4:\\$(${5:lisp-fn})}\\}$0" "${ ...  } field" nil nil nil "/home/hlissner/.config/doom/snippets/snippet-mode/field" nil nil)
                       ("`" "\\`$0\\`" "elisp" nil nil nil "/home/hlissner/.config/doom/snippets/snippet-mode/elisp" nil nil)
                       ("cont" "# contributor: `user-full-name`" "cont" nil nil nil "/home/hlissner/.config/doom/snippets/snippet-mode/cont" nil nil)))


;;; Do not edit! File generated at Wed Mar 13 18:35:13 2019
