;;; Compiled snippets and support files for `org-mode'
;;; Snippet definitions:
;;;
(yas-define-snippets 'org-mode
                     '(("width" "#+ATTR_HTML: :width ${1:500px}" "#+ATTR_HTML: :width ..." nil nil nil "/home/hlissner/.config/doom/snippets/org-mode/width" nil nil)
                       ("verse" "#+begin_verse\n$0\n#+end_verse" "verse" nil nil nil "/home/hlissner/.config/doom/snippets/org-mode/verse" nil nil)
                       ("todo" "TODO ${1:task description}" "TODO item" nil nil nil "/home/hlissner/.config/doom/snippets/org-mode/todo" nil nil)
                       ("<v"
                        (progn
                          (%alias "verse"))
                        "#+BEGIN_VERSE block" nil nil nil "/home/hlissner/.config/doom/snippets/org-mode/struct_v" nil nil)
                       ("<s"
                        (progn
                          (%alias "src"))
                        "#+BEGIN_SRC ... block" nil nil nil "/home/hlissner/.config/doom/snippets/org-mode/struct_s" nil nil)
                       ("<q" "#+BEGIN_QUOTE\n`%`$0\n#+END_QUOTE\n" "#+BEGIN_QUOTE block" nil nil nil "/home/hlissner/.config/doom/snippets/org-mode/struct_q" nil nil)
                       ("<l" "#+BEGIN_EXPORT latex\n`%`$0\n#+END_EXPORT\n" "#+BEGIN_EXPORT latex block" nil nil nil "/home/hlissner/.config/doom/snippets/org-mode/struct_l" nil nil)
                       ("<h" "#+BEGIN_EXPORT html\n`%`$0\n#+END_EXPORT\n" "#+BEGIN_EXPORT html block" nil nil nil "/home/hlissner/.config/doom/snippets/org-mode/struct_h" nil nil)
                       ("<e" "#+BEGIN_EXAMPLE\n`%`$0\n#+END_EXAMPLE\n" "#+BEGIN_EXAMPLE block" nil nil nil "/home/hlissner/.config/doom/snippets/org-mode/struct_e" nil nil)
                       ("<c" "#+BEGIN_COMMENT\n`%`$0\n#+END_COMMENT\n" "#+BEGIN_COMMENT block" nil nil nil "/home/hlissner/.config/doom/snippets/org-mode/struct_c" nil nil)
                       ("<a" "#+BEGIN_EXPORT ascii\n`%`$0\n#+END_EXPORT\n" "#+BEGIN_EXPORT ascii" nil nil nil "/home/hlissner/.config/doom/snippets/org-mode/struct_a" nil nil)
                       ("<E"
                        (progn
                          (%alias "export"))
                        "#+BEGIN_EXPORT ... block" nil nil nil "/home/hlissner/.config/doom/snippets/org-mode/struct_E" nil nil)
                       ("<C" "#+BEGIN_CENTER\n`%`$0\n#+END_CENTER\n" "#+BEGIN_CENTER block" nil nil nil "/home/hlissner/.config/doom/snippets/org-mode/struct_C" nil nil)
                       ("name" "#+srcname: $0" "srcname" nil nil nil "/home/hlissner/.config/doom/snippets/org-mode/srcname" nil nil)
                       ("src" "#+BEGIN_SRC ${1:language}\n`%`$0\n#+END_SRC" "src" nil nil nil "/home/hlissner/.config/doom/snippets/org-mode/src" nil nil)
                       ("quote" "#+begin_quote\n`%`$0\n#+end_quote" "quote block" nil nil nil "/home/hlissner/.config/doom/snippets/org-mode/quote" nil nil)
                       ("matrix" "\\left \\(\n\\begin{array}{${1:ccc}}\n${2:v1 & v2} \\\\\n$0\n\\end{array}\n\\right \\)" "matrix" nil nil nil "/home/hlissner/.config/doom/snippets/org-mode/matrix" nil nil)
                       ("latex" "#+BEGIN_LaTeX\n`%`$0\n#+END_LaTeX" "latex" nil nil nil "/home/hlissner/.config/doom/snippets/org-mode/latex" nil nil)
                       ("img" "<img src=\"$1\"\n alt=\"$2\" align=\"${3:left}\"\n title=\"${4:image title}\"\n class=\"img\"\n</img>\n$0" "img" nil nil nil "/home/hlissner/.config/doom/snippets/org-mode/img" nil nil)
                       ("head" "#+TITLE:     ${1:Untitled Document}\n#+AUTHOR:    Henrik Lissner\n#+EMAIL:     henrik@lissner.net\n" "org-file header" nil nil nil "/home/hlissner/.config/doom/snippets/org-mode/head" nil nil)
                       ("fig" "#+CAPTION: ${1:caption}\n#+ATTR_LaTeX: ${2:scale=0.75}\n#+LABEL: fig:${3:label}\n" "figure" nil nil nil "/home/hlissner/.config/doom/snippets/org-mode/figure" nil nil)
                       ("export" "#+BEGIN_EXPORT ${1:type}\n`%`$0\n#+END_EXPORT" "export" nil nil nil "/home/hlissner/.config/doom/snippets/org-mode/export" nil nil)
                       ("ex" "#+begin_example\n`%`$0\n#+end_example\n" "example" nil nil nil "/home/hlissner/.config/doom/snippets/org-mode/example" nil nil)
                       ("entry" "#+begin_html\n---\nlayout: ${1:default}\ntitle: ${2:title}\n---\n#+end_html\n$0" "entry" nil nil nil "/home/hlissner/.config/doom/snippets/org-mode/entry" nil nil)
                       ("emb" "src_${1:lang}${2:[${3:where}]}{${4:code}}" "embedded" nil nil nil "/home/hlissner/.config/doom/snippets/org-mode/embedded" nil nil)
                       ("elisp" "#+begin_src emacs-lisp :tangle yes\n$0\n#+end_src" "elisp" nil nil nil "/home/hlissner/.config/doom/snippets/org-mode/elisp" nil nil)
                       ("dot" "#+begin_src dot :file ${1:file} :cmdline -T${2:pdf} :exports none :results silent\n            $0\n#+end_src\n\n[[file:$1]]" "dot" nil nil nil "/home/hlissner/.config/doom/snippets/org-mode/dot" nil nil)
                       ("code" "#+begin_${1:lang} ${2:options}\n$0\n#+end_$1" "code" nil nil nil "/home/hlissner/.config/doom/snippets/org-mode/code" nil nil)
                       ("blog" "#+STARTUP: showall indent\n#+STARTUP: hidestars\n#+BEGIN_HTML\n---\nlayout: default\ntitle: ${1:title}\nexcerpt: ${2:excerpt}\n---\n$0" "blog" nil nil nil "/home/hlissner/.config/doom/snippets/org-mode/blog" nil nil)))


;;; Do not edit! File generated at Wed Mar 13 18:35:12 2019
