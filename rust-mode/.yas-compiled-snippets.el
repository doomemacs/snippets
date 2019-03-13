;;; Compiled snippets and support files for `rust-mode'
;;; Snippet definitions:
;;;
(yas-define-snippets 'rust-mode
                     '(("whilel" "while let ${1:pattern} = ${2:expression} {\n      $0\n}\n" "while let ... = ... { ... }" nil nil nil "/home/hlissner/.config/doom/snippets/rust-mode/while-let" nil nil)
                       ("while" "while ${1:true} { `(!%!)`$0 }" "while ... { ... }" nil nil nil "/home/hlissner/.config/doom/snippets/rust-mode/while" nil nil)
                       ("v" "vec![${1:`%`}]" "vec![...]" nil nil nil "/home/hlissner/.config/doom/snippets/rust-mode/vec" nil nil)
                       ("uhashmap" "use std::collections::HashMap;" "use std::collections::HashMap"
                        (%bolp)
                        nil nil "/home/hlissner/.config/doom/snippets/rust-mode/use-HashMap" nil nil)
                       ("ufile" "use std::fs::File;" "use std::fs::File"
                        (%bolp)
                        nil nil "/home/hlissner/.config/doom/snippets/rust-mode/use-File" nil nil)
                       ("use" "use ${1:std::${2:io}};$0" "use ..."
                        (%bolp)
                        nil nil "/home/hlissner/.config/doom/snippets/rust-mode/use" nil nil)
                       ("un" "unsafe { `(!%!)`$0 }" "unsafe { ... }" nil nil nil "/home/hlissner/.config/doom/snippets/rust-mode/unsafe" nil nil)
                       ("type" "type ${1:TypeName} = ${2:i32};" "type Name = ...;" nil nil nil "/home/hlissner/.config/doom/snippets/rust-mode/type" nil nil)
                       ("tr"
                        (progn
                          (%alias "trait"))
                        "trait ... { ... }" nil nil nil "/home/hlissner/.config/doom/snippets/rust-mode/trait_alias" nil "trait_alias")
                       ("trait" "trait ${1:Name} {\n    `%`$0\n}" "trait ... { ... }" nil nil nil "/home/hlissner/.config/doom/snippets/rust-mode/trait" nil "trait")
                       ("test" "#[test]\nfn ${1:test_${2:name}}() {\n   `%`$0\n}" "test function"
                        (%bolp)
                        nil nil "/home/hlissner/.config/doom/snippets/rust-mode/test" nil nil)
                       ("st"
                        (progn
                          (%alias "struct"))
                        "struct"
                        (%bolp)
                        nil nil "/home/hlissner/.config/doom/snippets/rust-mode/struct_alias" nil "struct_alias")
                       ("struct" "struct ${1:Name} {\n    `%`$0\n}" "struct"
                        (%bolp)
                        nil nil "/home/hlissner/.config/doom/snippets/rust-mode/struct" nil "struct")
                       ("static" "static ${1:VARNAME}${2: ${3:i32}} = ${4:value};" "static VAR = ..." nil nil nil "/home/hlissner/.config/doom/snippets/rust-mode/static" nil nil)
                       ("ret" "return ${1:`%`};$0" "return" nil nil nil "/home/hlissner/.config/doom/snippets/rust-mode/ret" nil nil)
                       ("pmod" "pub mod ${1:name} {\n    `%`$0\n}" "pub mod" nil nil nil "/home/hlissner/.config/doom/snippets/rust-mode/pub_mod" nil nil)
                       ("pfn" "pub fn ${1:function_name}($2) ${3:-> ${4:int} }{\n   `%`$0\n}" "public function" nil nil nil "/home/hlissner/.config/doom/snippets/rust-mode/pub_fn" nil nil)
                       ("p" "println!(\"$1\", ${2:`%`});$0" "println!(...)" nil nil nil "/home/hlissner/.config/doom/snippets/rust-mode/println" nil nil)
                       ("pa" "panic!(\"$1\", ${2:`%`});$0" "panic!(...)" nil nil nil "/home/hlissner/.config/doom/snippets/rust-mode/panic" nil nil)
                       ("new" "${1:Vec}::new(${2:`%`})`(if (eolp) \";\" \"\")`" "Type::new(...)" nil nil nil "/home/hlissner/.config/doom/snippets/rust-mode/new" nil nil)
                       ("mod" "mod ${1:name} {\n    `%`$0\n}" "mod" nil nil nil "/home/hlissner/.config/doom/snippets/rust-mode/mod" nil nil)
                       ("ma"
                        (progn
                          (%alias "match"))
                        "match" nil nil nil "/home/hlissner/.config/doom/snippets/rust-mode/match_alias" nil "match_alias")
                       ("match?" "match ${1:x} {\n    Ok(${2:var}) => $3,\n    Err(${4:error}) => $5\n}" "match n { Ok(x), Err(y) }" nil nil nil "/home/hlissner/.config/doom/snippets/rust-mode/match-ok" nil nil)
                       ("match" "match ${1:x} {\n    `%`$0\n}" "match" nil nil nil "/home/hlissner/.config/doom/snippets/rust-mode/match" nil "match")
                       ("main" "fn main() {\n   `%`$0\n}" "main" nil nil nil "/home/hlissner/.config/doom/snippets/rust-mode/main" nil nil)
                       ("loop" "loop { `(!%!)`$0 }" "loop { ... }" nil nil nil "/home/hlissner/.config/doom/snippets/rust-mode/loop" nil nil)
                       ("'s" "'static" "'static" nil nil nil "/home/hlissner/.config/doom/snippets/rust-mode/lifetime-static" nil nil)
                       ("letm" "let mut ${1:var} = $0`(if (eolp) \";\" \"\")`" "let mut" nil nil nil "/home/hlissner/.config/doom/snippets/rust-mode/letm" nil nil)
                       ("let" "let ${1:var} = $0`(if (eolp) \";\" \"\")`" "let" nil nil nil "/home/hlissner/.config/doom/snippets/rust-mode/let" nil nil)
                       ("fn" "|${1:x}|${2: -> i32} `(if (> (%lines %) 1) \"{ \" \"\")``(!%!)`$0`(if (> (%lines %) 1) \" }\" \"\")`" "anonymous function"
                        (not
                         (%bolp))
                        nil nil "/home/hlissner/.config/doom/snippets/rust-mode/lambda" nil nil)
                       ("ife" "if ${1:x} {${2:`%`}}${3: else {$4}}$0" "inline if-else" nil nil nil "/home/hlissner/.config/doom/snippets/rust-mode/inline-if-else" nil nil)
                       ("impl" "impl ${1:name}${2: for ${3:Type}} {\n   `%`$0\n}" "impl" nil nil nil "/home/hlissner/.config/doom/snippets/rust-mode/impl" nil nil)
                       ("ign" "#[ignore]" "#[ignore]" nil nil nil "/home/hlissner/.config/doom/snippets/rust-mode/ignore" nil nil)
                       ("ifl" "if let ${1:Some(${2:x})} => ${3:var} {\n   `%`$0\n}" "if let ..." nil nil nil "/home/hlissner/.config/doom/snippets/rust-mode/if-let" nil nil)
                       ("if" "if ${1:x} {\n   `%`$0\n}" "if ... { ... }" nil nil nil "/home/hlissner/.config/doom/snippets/rust-mode/if" nil nil)
                       ("f" "format!(\"$1\", ${2:`%`})" "format!(..., ...)" nil nil nil "/home/hlissner/.config/doom/snippets/rust-mode/format" nil nil)
                       ("for" "for ${1:x} in ${2:items} {\n    `%`$0\n}" "for in" nil nil nil "/home/hlissner/.config/doom/snippets/rust-mode/for" nil nil)
                       ("fn" "fn ${1:function_name}($2) ${3:-> ${4:int} }{\n   `%`$0\n}" "function"
                        (%bolp)
                        nil nil "/home/hlissner/.config/doom/snippets/rust-mode/fn" nil nil)
                       ("ext" "extern crate ${1:rand};$0" "extern crate ..."
                        (%bolp)
                        nil nil "/home/hlissner/.config/doom/snippets/rust-mode/extern-crate" nil nil)
                       ("extc" "extern \"C\" {\n    `%`$0\n}" "extern \"C\" { ... }"
                        (%bolp)
                        nil nil "/home/hlissner/.config/doom/snippets/rust-mode/extern" nil nil)
                       ("ep" "eprintln!(\"$1\", ${2:`%`});$0" "eprintln!(...)" nil nil nil "/home/hlissner/.config/doom/snippets/rust-mode/eprintln" nil nil)
                       ("envv" "env::var(\"$1\")" "env::var(...)" nil nil nil "/home/hlissner/.config/doom/snippets/rust-mode/env-var" nil nil)
                       ("argv" "env::args()" "env::args()" nil nil nil "/home/hlissner/.config/doom/snippets/rust-mode/env-args" nil nil)
                       ("enum" "enum ${1:EnumName} {\n    `%`$0\n}" "enum" nil nil nil "/home/hlissner/.config/doom/snippets/rust-mode/enum" nil nil)
                       ("elif" "else if ${1:true} {\n   `%`$0\n}" "else if ... { ... }" nil nil nil "/home/hlissner/.config/doom/snippets/rust-mode/elseif" nil nil)
                       ("else" "else {\n   `%`$0\n}" "else { ... }" nil nil nil "/home/hlissner/.config/doom/snippets/rust-mode/else" nil nil)
                       ("der" "#[derive($1)]" "#[derive(...)]"
                        (%bolp)
                        nil nil "/home/hlissner/.config/doom/snippets/rust-mode/derive" nil nil)
                       ("dass" "debug_assert!(`%`$0);" "debug_assert!(...)" nil nil nil "/home/hlissner/.config/doom/snippets/rust-mode/debug_assert" nil nil)
                       ("const" "const ${1:VARNAME}${2: ${3:i32}} = ${4:value};" "const VAR = ..." nil nil nil "/home/hlissner/.config/doom/snippets/rust-mode/const" nil nil)
                       ("cfg" "#[cfg($0)]" "#[cfg(...)]" nil nil nil "/home/hlissner/.config/doom/snippets/rust-mode/cfg" nil nil)
                       ("b" "${1:Label} { `(!%!)`$1 }$0" "block" nil nil nil "/home/hlissner/.config/doom/snippets/rust-mode/block" nil nil)
                       ("=" "${1:x} = ${2:value}`(if (eolp) \";\" \"\")`$0" "assignment" nil nil nil "/home/hlissner/.config/doom/snippets/rust-mode/assignment" nil nil)
                       ("assn" "assert_ne!(${1:`%`}, $2);" "assert_ne!(..., ...)" nil nil nil "/home/hlissner/.config/doom/snippets/rust-mode/assert_ne" nil nil)
                       ("asse" "assert_eq!(${1:`%`}, $2);" "assert_eq!(..., ...)" nil nil nil "/home/hlissner/.config/doom/snippets/rust-mode/assert_eq" nil nil)
                       ("ass" "assert!(`%`$0);" "assert!(...)" nil nil nil "/home/hlissner/.config/doom/snippets/rust-mode/assert" nil nil)
                       ("=>" "${1:_} => ${0:...}" "x => y" nil nil nil "/home/hlissner/.config/doom/snippets/rust-mode/arrow" nil nil)
                       ("ts" "to_string()" ".to_string()"
                        (%without-trigger
                         (eq
                          (char-before)
                          46))
                        nil nil "/home/hlissner/.config/doom/snippets/rust-mode/_to_string" nil nil)
                       ("i" "iter()" ".iter()"
                        (%without-trigger
                         (eq
                          (char-before)
                          46))
                        nil nil "/home/hlissner/.config/doom/snippets/rust-mode/_iter" nil nil)
                       ("ii" "into_iter()" ".into_iter()"
                        (%without-trigger
                         (eq
                          (char-before)
                          46))
                        nil nil "/home/hlissner/.config/doom/snippets/rust-mode/_into_iter" nil nil)
                       ("fm" "filter_map(${1:`%`})" ".filter_map(...)"
                        (%without-trigger
                         (eq
                          (char-before)
                          46))
                        nil nil "/home/hlissner/.config/doom/snippets/rust-mode/_filter_map" nil nil)
                       ("vwc" "Vec::with_capacity(${1:n})" "Vec::with_capacity(...)" nil nil nil "/home/hlissner/.config/doom/snippets/rust-mode/Vec-with_capacity" nil nil)
                       ("sf" "String::from(\"$0\")" "String::from(...)" nil nil nil "/home/hlissner/.config/doom/snippets/rust-mode/String_from" nil nil)
                       ("so" "Some(${1:`%`})" "Some(...)" nil nil nil "/home/hlissner/.config/doom/snippets/rust-mode/Some" nil nil)
                       ("res" "Result<${1:T}, ${2:()}>" "Result<T, E>" nil nil nil "/home/hlissner/.config/doom/snippets/rust-mode/Result" nil nil)
                       ("no" "None" "None" nil nil nil "/home/hlissner/.config/doom/snippets/rust-mode/None" nil nil)
                       ("fo" "File::open(${1:`%`})`(if (eolp) \";\" \"\")`" "File::open(...)" nil nil nil "/home/hlissner/.config/doom/snippets/rust-mode/File-open" nil nil)))


;;; Do not edit! File generated at Wed Mar 13 18:35:13 2019
