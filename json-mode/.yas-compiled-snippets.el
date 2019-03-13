;;; Compiled snippets and support files for `json-mode'
;;; Snippet definitions:
;;;
(yas-define-snippets 'json-mode
                     '(("eslint" "\"eslintConfig\": {\n    \"env\": {\n        \"es6\": true,\n        \"browser\": true,\n        \"commonjs\": true,\n        \"node\": true\n    },\n    \"parserOptions\": {\n        \"ecmaFeatures\": {\n            \"jsx\": true\n        }\n    }\n}" "eslintConfig"
                        (equal
                         (file-name-nondirectory buffer-file-name)
                         "package.json")
                        nil nil "/home/hlissner/.config/doom/snippets/json-mode/eslintConfig" nil nil)))


;;; Do not edit! File generated at Wed Mar 13 18:35:12 2019
