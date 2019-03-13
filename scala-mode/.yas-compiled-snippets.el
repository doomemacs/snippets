;;; Compiled snippets and support files for `scala-mode'
;;; Snippet definitions:
;;;
(yas-define-snippets 'scala-mode
                     '(("try" "try {\n    `%`$0\n} catch {\n    case e: ${1:Throwable} => \n        ${2:// TODO: handle exception}\n}" "try { ... } catch { case e => ... }" nil nil nil "/home/hlissner/.config/doom/snippets/scala-mode/try" nil nil)
                       ("throw" "throw new ${1:Exception}($2) $0" "throw new Exception" nil nil nil "/home/hlissner/.config/doom/snippets/scala-mode/throw" nil nil)
                       ("main" "def main(args: Array[String]) = {\n    `%`$0\n}" "def main(args: Array[String]) = { ... }" nil nil nil "/home/hlissner/.config/doom/snippets/scala-mode/main" nil nil)
                       ("if" "if (${1:condition}) {\n    `%`$0\n}" "if (...) { ... }" nil nil nil "/home/hlissner/.config/doom/snippets/scala-mode/if" nil nil)
                       ("def" "def ${1:name}(${2:args}): ${3:Unit} = {\n    `%`$0\n}" "def fn(args): R = { ... }" nil nil nil "/home/hlissner/.config/doom/snippets/scala-mode/def" nil nil)
                       ("cons" "${1:element1} :: ${2:element2} $0" "element1 :: element2" nil nil nil "/home/hlissner/.config/doom/snippets/scala-mode/cons" nil nil)
                       ("case" "case ${1:_} => $0" "case ... => ..." nil nil nil "/home/hlissner/.config/doom/snippets/scala-mode/case" nil nil)
                       ("app" "object ${1:name} extends App {\n    `%`$0\n}" "object ... extends App { ... }" nil nil nil "/home/hlissner/.config/doom/snippets/scala-mode/app" nil nil)
                       ("List" "List(${1:args}) $0" "List(...)" nil nil nil "/home/hlissner/.config/doom/snippets/scala-mode/List" nil nil)))


;;; Do not edit! File generated at Wed Mar 13 18:35:13 2019
