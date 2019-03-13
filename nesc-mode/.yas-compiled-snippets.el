;;; Compiled snippets and support files for `nesc-mode'
;;; Snippet definitions:
;;;
(yas-define-snippets 'nesc-mode
                     '(("uses" "uses interface ${1:Interface}${2: as ${3:alias}};\n$0" "uses" nil nil nil "/home/hlissner/.config/doom/snippets/nesc-mode/uses" nil nil)
                       ("u8" "uint8_t ${1:var};\n$0" "uint8_t" nil nil nil "/home/hlissner/.config/doom/snippets/nesc-mode/uint8_t" nil nil)
                       ("sim" "#ifdef TOSSIM\n       $0\n#endif" "sim" nil nil nil "/home/hlissner/.config/doom/snippets/nesc-mode/sim" nil nil)
                       ("provides" "provides interface ${1:Interface};" "provides" nil nil nil "/home/hlissner/.config/doom/snippets/nesc-mode/provides" nil nil)
                       ("nx" "nx_uint${1:8}_t ${2:var};\n$0" "nx" nil nil nil "/home/hlissner/.config/doom/snippets/nesc-mode/nx" nil nil)
                       ("mod" "module ${1:Module} {\n       ${2:uses interface ${3:Packet}};\n       $0\n}" "module" nil nil nil "/home/hlissner/.config/doom/snippets/nesc-mode/module" nil nil)
                       ("int" "interface ${1:Interface} {\n          $0\n}" "interface" nil nil nil "/home/hlissner/.config/doom/snippets/nesc-mode/interface" nil nil)
                       ("ifdef" "#ifdef ${1:Macro}\n $2\n${3:#else}\n $4\n#endif" "ifdef" nil nil nil "/home/hlissner/.config/doom/snippets/nesc-mode/ifdef" nil nil)
                       ("event" "event ${1:void} ${2:On.Event}($3) {\n      $0\n}" "event" nil nil nil "/home/hlissner/.config/doom/snippets/nesc-mode/event" nil nil)
                       ("dbg" "dbg(\"${1:Module}\", \"${2:message}\"${3:, ${4:var list}});" "dbg" nil nil nil "/home/hlissner/.config/doom/snippets/nesc-mode/dbg" nil nil)
                       ("command" "command ${1:void} ${2:naMe}($3) {\n\n}" "command" nil nil nil "/home/hlissner/.config/doom/snippets/nesc-mode/command" nil nil)
                       ("tossim" "#ifndef TOSSIM\n        $0\n#endif" "TOSSIM" nil nil nil "/home/hlissner/.config/doom/snippets/nesc-mode/TOSSIM" nil nil)))


;;; Do not edit! File generated at Wed Mar 13 18:35:12 2019
