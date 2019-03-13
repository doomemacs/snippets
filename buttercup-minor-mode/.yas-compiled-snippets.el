;;; Compiled snippets and support files for `buttercup-minor-mode'
;;; Snippet definitions:
;;;
(yas-define-snippets 'buttercup-minor-mode
                     '(("scc" "(spy-calls-count ${1:'foo})" "spy-calls-count ..." nil nil nil "/home/hlissner/.config/doom/snippets/buttercup-minor-mode/spy-calls-count" nil nil)
                       ("scaf" "(spy-calls-args-for ${1:'foo} ${2:args...})" "spy-calls-args-for ..." nil nil nil "/home/hlissner/.config/doom/snippets/buttercup-minor-mode/spy-calls-args-for" nil nil)
                       ("sca" "(spy-calls-any ${1:'foo})" "spy-calls-any ..." nil nil nil "/home/hlissner/.config/doom/snippets/buttercup-minor-mode/spy-calls-any" nil nil)
                       ("scaa" "(spy-calls-all-args ${1:'foo})" "spy-calls-all-args ..." nil nil nil "/home/hlissner/.config/doom/snippets/buttercup-minor-mode/spy-calls-all-args" nil nil)
                       ("ate" "and-throw-error ${1:'error}" ":and-throw-error ..."
                        (%without-trigger
                         (eq
                          (char-before)
                          58))
                        nil nil "/home/hlissner/.config/doom/snippets/buttercup-minor-mode/spy-and-throw-error" nil nil)
                       ("arv" "and-return-value ${1:value}" ":and-return-value ..."
                        (%without-trigger
                         (eq
                          (char-before)
                          58))
                        nil nil "/home/hlissner/.config/doom/snippets/buttercup-minor-mode/spy-and-return-value" nil nil)
                       ("act" "and-call-through" ":and-call-through ..."
                        (%without-trigger
                         (eq
                          (char-before)
                          58))
                        nil nil "/home/hlissner/.config/doom/snippets/buttercup-minor-mode/spy-and-call-through" nil nil)
                       ("acf" "and-call-fake ${1:#'fn}" ":and-call-fake ..."
                        (%without-trigger
                         (eq
                          (char-before)
                          58))
                        nil nil "/home/hlissner/.config/doom/snippets/buttercup-minor-mode/spy-and-call-fake" nil nil)
                       ("it" "(it \"${1:...}\" ${2:`(!%)`}$0)" "it ..." nil nil nil "/home/hlissner/.config/doom/snippets/buttercup-minor-mode/it" nil nil)
                       ("t" "to-throw" ":to-throw"
                        (%without-trigger
                         (eq
                          (char-before)
                          58))
                        nil nil "/home/hlissner/.config/doom/snippets/buttercup-minor-mode/expect-to-throw" nil nil)
                       ("m" "to-match $1" ":to-match ..."
                        (%without-trigger
                         (eq
                          (char-before)
                          58))
                        nil nil "/home/hlissner/.config/doom/snippets/buttercup-minor-mode/expect-to-match" nil nil)
                       ("s" "to-have-same-items-as $1" ":to-have-same-items-as ..."
                        (%without-trigger
                         (eq
                          (char-before)
                          58))
                        nil nil "/home/hlissner/.config/doom/snippets/buttercup-minor-mode/expect-to-have-same-items-as" nil nil)
                       ("bcw" "to-have-been-called-with ${1:args...}" ":to-have-been-called-with ..."
                        (%without-trigger
                         (eq
                          (char-before)
                          58))
                        nil nil "/home/hlissner/.config/doom/snippets/buttercup-minor-mode/expect-to-have-been-called-with" nil nil)
                       ("bct" "to-have-been-called-times ${1:1}" ":to-have-been-called-time ..."
                        (%without-trigger
                         (eq
                          (char-before)
                          58))
                        nil nil "/home/hlissner/.config/doom/snippets/buttercup-minor-mode/expect-to-have-been-called-times" nil nil)
                       ("bc" "to-have-been-called" ":to-have-been-called ..."
                        (%without-trigger
                         (eq
                          (char-before)
                          58))
                        nil nil "/home/hlissner/.config/doom/snippets/buttercup-minor-mode/expect-to-have-been-called" nil nil)
                       ("e" "to-equal $1" ":to-equal"
                        (%without-trigger
                         (eq
                          (char-before)
                          58))
                        nil nil "/home/hlissner/.config/doom/snippets/buttercup-minor-mode/expect-to-equal" nil nil)
                       ("c" "to-contain $1" ":to-contain ..."
                        (%without-trigger
                         (eq
                          (char-before)
                          58))
                        nil nil "/home/hlissner/.config/doom/snippets/buttercup-minor-mode/expect-to-contain" nil nil)
                       ("b" "to-be ${1:nil}" ":to-be ..."
                        (%without-trigger
                         (eq
                          (char-before)
                          58))
                        nil nil "/home/hlissner/.config/doom/snippets/buttercup-minor-mode/expect-to-be" nil nil)
                       ("expect" "(expect ${1:`(%% \"value\")`}$0)" "expect" nil nil nil "/home/hlissner/.config/doom/snippets/buttercup-minor-mode/expect" nil "expect")
                       ("ex"
                        (progn
                          (%alias "expect"))
                        "expect" nil nil nil "/home/hlissner/.config/doom/snippets/buttercup-minor-mode/ex" nil "ex")
                       ("describe" "(describe \"${1:group}\"${2:`(!%)`}$0)" "describe ... ..." nil nil nil "/home/hlissner/.config/doom/snippets/buttercup-minor-mode/describe" nil "describe")
                       ("desc"
                        (progn
                          (%alias "describe"))
                        "describe ... ..." nil nil nil "/home/hlissner/.config/doom/snippets/buttercup-minor-mode/desc" nil "desc")
                       ("bfe" "(before-each ${1:`(!%)`})" "before-each ..." nil nil nil "/home/hlissner/.config/doom/snippets/buttercup-minor-mode/before-each" nil nil)
                       ("bfa" "(before-all ${1:`(!%)`})" "before-all ..." nil nil nil "/home/hlissner/.config/doom/snippets/buttercup-minor-mode/before-all" nil nil)
                       ("afe" "(after-each ${1:`(!%)`})" "after-each ..." nil nil nil "/home/hlissner/.config/doom/snippets/buttercup-minor-mode/after-each" nil nil)
                       ("afa" "(after-all ${1:`(!%)`})" "after-all ..." nil nil nil "/home/hlissner/.config/doom/snippets/buttercup-minor-mode/after-all" nil nil)))


;;; Do not edit! File generated at Wed Mar 13 18:35:12 2019
