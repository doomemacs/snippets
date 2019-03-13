;;; Compiled snippets and support files for `go-mode'
;;; Snippet definitions:
;;;
(yas-define-snippets 'go-mode
                     '(("while" "for $1 {\n	`%`$0\n}" "for ... { ... }" nil nil nil "/home/hlissner/.config/doom/snippets/go-mode/while" nil nil)
                       ("var" "var ${1:ok} ${2:bool}$0" "var" nil nil nil "/home/hlissner/.config/doom/snippets/go-mode/var" nil nil)
                       ("test" "func Test${1:Name}(${2:t *testing.T}) {\n	`%`$0\n}" "func Test...() { ... }" nil nil nil "/home/hlissner/.config/doom/snippets/go-mode/test" nil nil)
                       ("switch" "switch {\n    case ${1:cond}:\n         $0\n}" "switch" nil nil nil "/home/hlissner/.config/doom/snippets/go-mode/switch" nil nil)
                       ("struct" "type $1 struct {\n	`%`$0\n}" "type ... struct { ... }" nil nil nil "/home/hlissner/.config/doom/snippets/go-mode/struct" nil nil)
                       ("printf" "fmt.Printf(\"$1\\n\"${2:, ${3:str}})" "printf" nil nil nil "/home/hlissner/.config/doom/snippets/go-mode/printf" nil nil)
                       ("pr" "fmt.Printf(\"$1\\n\"${2:, ${3:str}})" "printf" nil nil nil "/home/hlissner/.config/doom/snippets/go-mode/pr" nil nil)
                       ("pkg" "package ${1:`(car (last (split-string (file-name-directory buffer-file-name) \"/\") 2))`}" "package" nil nil nil "/home/hlissner/.config/doom/snippets/go-mode/pkg" nil nil)
                       ("package" "package ${1:`(car (last (split-string (file-name-directory buffer-file-name) \"/\") 2))`}" "package" nil nil nil "/home/hlissner/.config/doom/snippets/go-mode/package" nil nil)
                       ("method" "func (${1:target}) ${2:name}(${3:args}) (${4:results}) {\n	$0\n}" "func (target) name(args) (results) { ... }" nil nil nil "/home/hlissner/.config/doom/snippets/go-mode/method" nil nil)
                       ("map" "map[${1:KeyType}]${2:ValueType}" "map" nil nil nil "/home/hlissner/.config/doom/snippets/go-mode/map" nil nil)
                       ("main" "func main() {\n   $0\n}" "func main() { ... }" nil nil nil "/home/hlissner/.config/doom/snippets/go-mode/main" nil nil)
                       ("import" "import ${1:package}$0" "import" nil nil nil "/home/hlissner/.config/doom/snippets/go-mode/import" nil nil)
                       ("imp" "import ${1:package}$0" "import" nil nil nil "/home/hlissner/.config/doom/snippets/go-mode/imp" nil nil)
                       ("ifunc" "func ($1) $2 {\n	`%`$0\n}" "func (...) ... { ... }" nil nil nil "/home/hlissner/.config/doom/snippets/go-mode/ifunc" nil nil)
                       ("iferr" "if err != nil {\n	`%`$0\n}" "if err != nil { ... }" nil nil nil "/home/hlissner/.config/doom/snippets/go-mode/iferr" nil nil)
                       ("func" "func ${1:fun}($2) {\n	$0\n}" "func" nil nil nil "/home/hlissner/.config/doom/snippets/go-mode/func" nil nil)
                       ("forw" "for $1 {\n	`%`$0\n}" "for ... { ... }" nil nil nil "/home/hlissner/.config/doom/snippets/go-mode/forw" nil nil)
                       ("fori" "for ${1:i} := ${2:0}; $1 < ${3:10}; $1++ {\n	`%`$0\n}" "for i := 0; i < n; i++ { ... }" nil nil nil "/home/hlissner/.config/doom/snippets/go-mode/fori" nil nil)
                       ("foreach" "for ${1:key}, ${2:value} := range ${3:target} {\n	`%`$0\n}" "for key, value := range ... { ... }" nil nil nil "/home/hlissner/.config/doom/snippets/go-mode/foreach" nil nil)
                       ("fore" "for ${1:key}, ${2:value} := range ${3:target} {\n	`%`$0\n}" "for key, value := range ... { ... }" nil nil nil "/home/hlissner/.config/doom/snippets/go-mode/fore" nil nil)
                       ("for" "for $1 {\n	`%`$0\n}" "for ... { ... }" nil nil nil "/home/hlissner/.config/doom/snippets/go-mode/for" nil nil)
                       ("fm" "func (${1:target}) ${2:name}(${3:args}) (${4:results}) {\n	$0\n}" "func (target) name(args) (results) { ... }" nil nil nil "/home/hlissner/.config/doom/snippets/go-mode/fm" nil nil)
                       ("f" "func ${1:fun}($2) {\n	$0\n}" "func" nil nil nil "/home/hlissner/.config/doom/snippets/go-mode/f" nil nil)
                       (":=" "${1:x} := ${2:`%`}" "... := ..." nil nil nil "/home/hlissner/.config/doom/snippets/go-mode/coloneq" nil nil)))


;;; Do not edit! File generated at Wed Mar 13 18:35:12 2019
