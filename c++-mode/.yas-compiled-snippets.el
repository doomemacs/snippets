;;; Compiled snippets and support files for `c++-mode'
;;; Snippet definitions:
;;;
(yas-define-snippets 'c++-mode
                     '(("vec" "std::vector<${1:Class}> ${2:var}${3:(${4:10}, $1($5))};" "vector" nil nil nil "/home/hlissner/.config/doom/snippets/c++-mode/vector" nil nil)
                       ("using" "using namespace ${std};" "using namespace ..." nil nil nil "/home/hlissner/.config/doom/snippets/c++-mode/using" nil nil)
                       ("tryw" "try {\n    `(or yas/selected-text (car kill-ring))`\n} catch ${1:Exception} {\n\n}\n" "tryw" nil nil nil "/home/hlissner/.config/doom/snippets/c++-mode/tryw" nil nil)
                       ("try" "try {\n    `%`$0\n} catch (${1:type}) {\n\n}\n" "try" nil nil nil "/home/hlissner/.config/doom/snippets/c++-mode/try" nil nil)
                       ("throw" "throw ${1:MyError}($0);" "throw" nil nil nil "/home/hlissner/.config/doom/snippets/c++-mode/throw" nil nil)
                       ("this" "this" "this" nil nil nil "/home/hlissner/.config/doom/snippets/c++-mode/this" nil nil)
                       ("ts" "BOOST_AUTO_TEST_SUITE( ${1:test_suite1} )\n\n$0\n\nBOOST_AUTO_TEST_SUITE_END()" "test_suite" nil
                        ("testing")
                        nil "/home/hlissner/.config/doom/snippets/c++-mode/test_suite" nil nil)
                       ("test_main" "int main(int argc, char **argv) {\n      ::testing::InitGoogleTest(&argc, argv);\n       return RUN_ALL_TESTS();\n}" "test_main" nil
                        ("testing")
                        nil "/home/hlissner/.config/doom/snippets/c++-mode/test_main" nil nil)
                       ("tc" "BOOST_AUTO_TEST_CASE( ${1:test_case} )\n{\n        $0\n}" "test case" nil
                        ("testing")
                        nil "/home/hlissner/.config/doom/snippets/c++-mode/test case" nil nil)
                       ("temp" "template<${1:$$(yas/choose-value '(\"typename\" \"class\"))} ${2:T}>\n$0" "template" nil nil nil "/home/hlissner/.config/doom/snippets/c++-mode/template" nil nil)
                       ("str" "#include <string>" "str" nil nil nil "/home/hlissner/.config/doom/snippets/c++-mode/str" nil nil)
                       ("st" "std::$0" "std::" nil nil nil "/home/hlissner/.config/doom/snippets/c++-mode/std_colon" nil nil)
                       ("std" "using namespace std;" "std" nil nil nil "/home/hlissner/.config/doom/snippets/c++-mode/std" nil nil)
                       ("ss" "#include <sstream>" "<sstream>" nil nil nil "/home/hlissner/.config/doom/snippets/c++-mode/sstream" nil nil)
                       ("public" "public:`(progn (indent-according-to-mode) \"\")`\n    $0" "public" nil nil nil "/home/hlissner/.config/doom/snippets/c++-mode/public" nil nil)
                       ("protected" "protected:`(progn (indent-according-to-mode) \"\")`\n    $0" "protected" nil nil nil "/home/hlissner/.config/doom/snippets/c++-mode/protected" nil nil)
                       ("private" "private:`(progn (indent-according-to-mode) \"\")`\n    $0" "private" nil nil nil "/home/hlissner/.config/doom/snippets/c++-mode/private" nil nil)
                       ("pack" "void cNetCommBuffer::pack(${1:type}) {\n\n}\n\n$0" "pack" nil nil nil "/home/hlissner/.config/doom/snippets/c++-mode/pack" nil nil)
                       ("os" "#include <ostream>" "ostream" nil nil nil "/home/hlissner/.config/doom/snippets/c++-mode/ostream" nil nil)
                       ("<<" "std::ostream& operator<<(std::ostream& s, const ${1:type}& ${2:c})\n{\n         $0\n         return s;\n}" "operator<<" nil
                        ("operator overloading")
                        nil "/home/hlissner/.config/doom/snippets/c++-mode/operator_ostream" nil nil)
                       (">>" "istream& operator>>(istream& s, const ${1:type}& ${2:c})\n{\n         $0\n}\n" "operator>>" nil
                        ("operator overloading")
                        nil "/home/hlissner/.config/doom/snippets/c++-mode/operator_istream" nil nil)
                       ("[]" "${1:Type}& operator[](${2:int index})\n{\n        $0\n}" "operator[]" nil
                        ("operator overloading")
                        nil "/home/hlissner/.config/doom/snippets/c++-mode/operator[]" nil nil)
                       ("==" "bool ${1:MyClass}::operator==(const $1 &other) const {\n     $0\n}" "operator==" nil
                        ("operator overloading")
                        nil "/home/hlissner/.config/doom/snippets/c++-mode/operator==" nil nil)
                       ("=" "${1:MyClass}& $1::operator=(const $1 &rhs) {\n    // Check for self-assignment!\n    if (this == &rhs)\n      return *this;\n    $0\n    return *this;\n}" "operator=" nil
                        ("operator overloading")
                        nil "/home/hlissner/.config/doom/snippets/c++-mode/operator=" nil nil)
                       ("+=" "${1:MyClass}& $1::operator+=(${2:const $1 &rhs})\n{\n  $0\n  return *this;\n}" "operator+=" nil
                        ("operator overloading")
                        nil "/home/hlissner/.config/doom/snippets/c++-mode/operator+=" nil nil)
                       ("+" "${1:MyClass} $1::operator+(const $1 &other)\n{\n    $1 result = *this;\n    result += other;\n    return result;\n}" "operator+" nil
                        ("operator overloading")
                        nil "/home/hlissner/.config/doom/snippets/c++-mode/operator+" nil nil)
                       ("!=" "bool ${1:MyClass}::operator!=(const $1 &other) const {\n    return !(*this == other);\n}" "operator!=" nil
                        ("operator overloading")
                        nil "/home/hlissner/.config/doom/snippets/c++-mode/operator!=" nil nil)
                       ("ns" "namespace ${1:name}" "namespace ..." nil nil nil "/home/hlissner/.config/doom/snippets/c++-mode/ns" nil nil)
                       ("namespace" "namespace ${1:Namespace} {\n\n    `yas/selected-text`\n\n}" "namespace" nil nil nil "/home/hlissner/.config/doom/snippets/c++-mode/namespace" nil nil)
                       ("mod" "class ${1:Class} : public cSimpleModule\n{\n   $0\n}" "module" nil nil nil "/home/hlissner/.config/doom/snippets/c++-mode/module" nil nil)
                       ("map" "std::map<${1:type1}$0> ${2:var};" "map" nil nil nil "/home/hlissner/.config/doom/snippets/c++-mode/map" nil nil)
                       ("iter" "${1:std::}${2:vector<int>}::iterator ${3:iter};\n" "iterator" nil nil nil "/home/hlissner/.config/doom/snippets/c++-mode/iterator" nil nil)
                       ("io" "#include <iostream>" "io" nil nil nil "/home/hlissner/.config/doom/snippets/c++-mode/io" nil nil)
                       ("il" "inline $0" "inline" nil nil nil "/home/hlissner/.config/doom/snippets/c++-mode/inline" nil nil)
                       ("inch" "#include \"`(file-name-nondirectory (file-name-sans-extension (buffer-file-name)))`.h\"\n" "#include \"{self}.h\"" nil nil nil "/home/hlissner/.config/doom/snippets/c++-mode/inch" nil nil)
                       ("ignore" "${1:std::}cin.ignore(std::numeric_limits<std::streamsize>::max(), '\\n');" "ignore" nil nil nil "/home/hlissner/.config/doom/snippets/c++-mode/ignore" nil nil)
                       ("gtest" "#include <gtest/gtest.h>" "gtest" nil
                        ("testing")
                        nil "/home/hlissner/.config/doom/snippets/c++-mode/gtest" nil nil)
                       ("function" "${1:void} ${2:Class}::${3:name}($4)${5: const} {\n    $0\n}" "function" nil nil nil "/home/hlissner/.config/doom/snippets/c++-mode/function" nil nil)
                       ("f" "${1:void} ${2:name}($3)$0" "fun_declaration" nil nil nil "/home/hlissner/.config/doom/snippets/c++-mode/fun_declaration" nil nil)
                       ("fr" "friend $0;" "friend" nil nil nil "/home/hlissner/.config/doom/snippets/c++-mode/friend" nil nil)
                       ("fori" "for (${1:iter}=${2:var}.begin(); $1!=$2.end(); ++$1) {\n    $0\n}" "fori" nil nil nil "/home/hlissner/.config/doom/snippets/c++-mode/fori" nil nil)
                       ("fixt" "BOOST_FIXTURE_TEST_SUITE( ${1:name}, ${2:Fixture} )\n\n$0\n\nBOOST_AUTO_TEST_SUITE_END()" "fixture" nil nil nil "/home/hlissner/.config/doom/snippets/c++-mode/fixture" nil nil)
                       ("enum" "enum ${1:NAME} {$0};" "enum" nil nil nil "/home/hlissner/.config/doom/snippets/c++-mode/enum" nil nil)
                       ("cast" "check_and_cast<${1:Type} *>(${2:msg});" "dynamic_casting" nil nil nil "/home/hlissner/.config/doom/snippets/c++-mode/dynamic_casting" nil nil)
                       ("/**" "/**\n * $0\n */" "doc" nil nil nil "/home/hlissner/.config/doom/snippets/c++-mode/doc" nil nil)
                       ("dla" "delete[] ${1:arr};" "delete[]" nil nil nil "/home/hlissner/.config/doom/snippets/c++-mode/delete[]" nil nil)
                       ("dl" "delete ${1:pointer};" "delete" nil nil nil "/home/hlissner/.config/doom/snippets/c++-mode/delete" nil nil)
                       ("c[" "const ${1:Type}& operator[](${2:int index}) const;" "d_operator[]_const" nil nil nil "/home/hlissner/.config/doom/snippets/c++-mode/d_operator[]_const" nil nil)
                       ("[" "${1:Type}& operator[](${2:int index});" "d_operator[]" nil nil nil "/home/hlissner/.config/doom/snippets/c++-mode/d_operator[]" nil nil)
                       ("<<" "friend std::ostream& operator<<(std::ostream&, const ${1:Class}&);" "d_operator<<" nil nil nil "/home/hlissner/.config/doom/snippets/c++-mode/d_operator" nil nil)
                       ("d+=" "${1:MyClass}& operator+=(${2:const $1 &});" "d+=" nil nil nil "/home/hlissner/.config/doom/snippets/c++-mode/d+=" nil nil)
                       ("cstd" "#include <cstdlib>" "cstd" nil nil nil "/home/hlissner/.config/doom/snippets/c++-mode/cstd" nil nil)
                       ("cout" "`(setq --cpp-ns (if (search \"using namespace std;\" (buffer-string)) \"\" \"std::\"))\n--cpp-ns`cout << ${1:string} << `--cpp-ns`endl;`(progn (makunbound '--cpp-ns) \"\")`" "cout" nil nil nil "/home/hlissner/.config/doom/snippets/c++-mode/cout" nil nil)
                       ("ct" "${1:Class}::$1(${2:args}) ${3: : ${4:init}} {\n    $0\n}" "constructor" nil nil nil "/home/hlissner/.config/doom/snippets/c++-mode/constructor" nil nil)
                       ("c[" "const ${1:Type}& operator[](${2:int index}) const\n{\n        $0\n}" "const_[]" nil nil nil "/home/hlissner/.config/doom/snippets/c++-mode/const_[]" nil nil)
                       ("class" "class ${1:Name} {\n    public:\n        ${1:$(yas/substr yas-text \"[^: ]*\")}();\n        ${2:virtual ~${1:$(yas/substr yas-text \"[^: ]*\")}();}\n    $0\n};" "class" nil nil nil "/home/hlissner/.config/doom/snippets/c++-mode/class" nil nil)
                       ("cin" "`(setq --cpp-ns (if (search \"using namespace std;\" (buffer-string)) \"\" \"std::\"))\n--cpp-ns`cin >> ${1:string};`(progn (makunbound '--cpp-ns) \"\")`" "cin" nil nil nil "/home/hlissner/.config/doom/snippets/c++-mode/cin" nil nil)
                       ("err" "cerr << $0;\n" "cerr" nil nil nil "/home/hlissner/.config/doom/snippets/c++-mode/cerr" nil nil)
                       ("req" "BOOST_REQUIRE( ${1:condition} );\n$0" "boost_require" nil
                        ("boost")
                        nil "/home/hlissner/.config/doom/snippets/c++-mode/boost_require" nil nil)
                       ("beginend" "${1:v}.begin(), $1.end" "v.begin(), v.end()" nil nil nil "/home/hlissner/.config/doom/snippets/c++-mode/beginend" nil nil)
                       ("assert" "assert($0);" "assert" nil nil nil "/home/hlissner/.config/doom/snippets/c++-mode/assert" nil nil)))


;;; Do not edit! File generated at Wed Mar 13 18:35:12 2019
