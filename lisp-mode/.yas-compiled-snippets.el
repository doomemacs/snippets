;;; Compiled snippets and support files for `lisp-mode'
;;; Snippet definitions:
;;;
(yas-define-snippets 'lisp-mode
                     '(("when" "(when (${1:condition}) ${2:`(!%)`})" "when ... (...)" nil nil nil "/home/hlissner/.config/doom/snippets/lisp-mode/when" nil nil)
                       ("unless" "(unless (${1:condition}) ${2:`(!%)`})" "unless ... (...)" nil nil nil "/home/hlissner/.config/doom/snippets/lisp-mode/unless" nil nil)
                       ("typecast" "(coerce ${1:object} ${2:type})" "cast" nil nil nil "/home/hlissner/.config/doom/snippets/lisp-mode/typecast" nil nil)
                       ("slot" "(${1:name} :initarg :${1:$(yas/substr yas-text \"[^: ]*\")}\n           :initform (error \":${1:$(yas/substr yas-text \"[^: ]*\")} must be specified\")\n           ;; :accessor ${1:$(yas/substr yas-text \"[^: ]*\")}\n           :reader ${1:$(yas/substr yas-text \"[^: ]*\")}-changed\n           :writer set-${1:$(yas/substr yas-text \"[^: ]*\")}\n           :type\n           :allocation ${3::class :instance}\n           :documentation \"${2:about-slot}\")\n$0\n" "slot" nil nil nil "/home/hlissner/.config/doom/snippets/lisp-mode/slot" nil nil)
                       ("if" "(if ${1:condition} ${2:`(!%)`})" "if" nil nil nil "/home/hlissner/.config/doom/snippets/lisp-mode/if" nil nil)
                       ("format" "(format t \"~& $0 ~%\")" "format" nil nil nil "/home/hlissner/.config/doom/snippets/lisp-mode/format" nil nil)
                       ("dotimes" "(dotimes (${1:var} ${2:count}) ${3:`(!%)`})" "dotimes" nil nil nil "/home/hlissner/.config/doom/snippets/lisp-mode/dotimes" nil nil)
                       ("dot"
                        (progn
                          (%alias "dotimes"))
                        "dotimes" nil nil nil "/home/hlissner/.config/doom/snippets/lisp-mode/dot" nil "dot")
                       ("dolist" "(dolist (${1:var} ${2:list}) ${3:`(!%)`})" "dolist" nil nil nil "/home/hlissner/.config/doom/snippets/lisp-mode/dolist" nil nil)
                       ("dol"
                        (progn
                          (%alias "dolist"))
                        "dolist" nil nil nil "/home/hlissner/.config/doom/snippets/lisp-mode/dol" nil "dol")
                       ("do" "(do ((${1:var1} ${2:init-form} ${3:step-form})\n     (${4:var2} ${5:init-form} ${6:step-form}))  \n    (${7:condition} ${8:return-value})\n    (${9:body}))\n$0\n" "do" nil nil nil "/home/hlissner/.config/doom/snippets/lisp-mode/do" nil nil)
                       ("defp" "(defpackage #:${1:name}\n   (:nicknames #:${2:nick})\n   (:use #:cl #:closer-mop #:${3:package})\n   (:shadow :${4.symbol})\n   (:shadowing-import-from #:${5:package} #:${6:symbol})\n   (:export :$0))\n" "defpackage" nil nil nil "/home/hlissner/.config/doom/snippets/lisp-mode/defpackage" nil nil)
                       ("cond" "(cond ($1)$2)" "cond" nil nil nil "/home/hlissner/.config/doom/snippets/lisp-mode/cond" nil nil)
                       ("defc" "(defclass ${1:name} (${2:inherits})\n  (${4:slots})\n  (:documentation \"${3:...}\"))" "defclass" nil nil nil "/home/hlissner/.config/doom/snippets/lisp-mode/class" nil nil)))


;;; Do not edit! File generated at Wed Mar 13 18:35:12 2019
