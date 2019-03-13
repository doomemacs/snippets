;;; Compiled snippets and support files for `typescript-mode'
;;; Snippet definitions:
;;;
(yas-define-snippets 'typescript-mode
                     '(("let" "let ${1:name} = ${0:`%`};" "let" nil nil nil "/home/hlissner/.config/doom/snippets/typescript-mode/let" nil nil)
                       ("importas" "import * as ${1:`%`} from '$2';" "import * as ..." nil nil nil "/home/hlissner/.config/doom/snippets/typescript-mode/importas" nil nil)
                       ("import" "import ${1:`%`} from '$2';" "import ..." nil nil nil "/home/hlissner/.config/doom/snippets/typescript-mode/import" nil nil)
                       ("const" "const ${1:name} = ${0:`%`};" "const" nil nil nil "/home/hlissner/.config/doom/snippets/typescript-mode/const" nil nil)
                       ("class" "class ${1:Name} {\n    $2\n\n    constructor($3) {\n        `%`$0\n    }\n}" "class" nil nil nil "/home/hlissner/.config/doom/snippets/typescript-mode/class" nil nil)))


;;; Do not edit! File generated at Wed Mar 13 18:35:13 2019
