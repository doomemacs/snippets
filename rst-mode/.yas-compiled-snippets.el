;;; Compiled snippets and support files for `rst-mode'
;;; Snippet definitions:
;;;
(yas-define-snippets 'rst-mode
                     '(("warn" ".. warning:\n   $0" "warning" nil nil nil "/home/hlissner/.config/doom/snippets/rst-mode/warning" nil nil)
                       ("|" "| $0\n|" "verbatim" nil nil nil "/home/hlissner/.config/doom/snippets/rst-mode/verbatim" nil nil)
                       ("url" ".. _${1:description}: $0" "url" nil nil nil "/home/hlissner/.config/doom/snippets/rst-mode/url" nil nil)
                       ("term" ":term:\\`$0\\`" "term" nil nil nil "/home/hlissner/.config/doom/snippets/rst-mode/term" nil nil)
                       ("pause" ".. rst-class:: build" "pause" nil
                        ("hieroglyph")
                        nil "/home/hlissner/.config/doom/snippets/rst-mode/pause" nil nil)
                       ("src" ".. parsed-literal::\n   $0" "parsed_literal" nil nil nil "/home/hlissner/.config/doom/snippets/rst-mode/parsed_literal" nil nil)
                       ("mod" ":mod: \\`$0\\`" "module" nil nil nil "/home/hlissner/.config/doom/snippets/rst-mode/module" nil nil)
                       (":" ":${1:var}: $0" "meta" nil nil nil "/home/hlissner/.config/doom/snippets/rst-mode/meta" nil nil)
                       ("inc" ".. literalinclude:: ${1:path}" "literatal include" nil nil nil "/home/hlissner/.config/doom/snippets/rst-mode/literal_include" nil nil)
                       ("inh" ".. inheritance-diagram:: $0" "inheritance" nil nil nil "/home/hlissner/.config/doom/snippets/rst-mode/inheritance" nil nil)
                       ("img" ".. image:: ${1:path}\n   :height: ${2:100}\n   :width: ${3:200}\n   :alt: ${4:description}\n\n$0" "image" nil nil nil "/home/hlissner/.config/doom/snippets/rst-mode/image" nil nil)
                       ("graph" ".. graphviz::\n\n   $0" "graphviz" nil nil nil "/home/hlissner/.config/doom/snippets/rst-mode/graphviz" nil nil)
                       ("graph" ".. graph:: $1\n\n   $0" "graph" nil nil nil "/home/hlissner/.config/doom/snippets/rst-mode/graph" nil nil)
                       ("fun" ":function:\\`$0\\`" "function" nil nil nil "/home/hlissner/.config/doom/snippets/rst-mode/function" nil nil)
                       ("graph" ".. digraph:: $1\n\n   $0" "digraph" nil nil nil "/home/hlissner/.config/doom/snippets/rst-mode/digraph" nil nil)
                       ("code" ".. code:: ${1:python}" "code" nil nil nil "/home/hlissner/.config/doom/snippets/rst-mode/code" nil nil)
                       ("cls" ":class:\\`$0\\`" "class" nil nil nil "/home/hlissner/.config/doom/snippets/rst-mode/class" nil nil)
                       ("auto" ".. automodule:: ${1:module_name}" "automodule" nil nil nil "/home/hlissner/.config/doom/snippets/rst-mode/automodule" nil nil)
                       ("auto" ".. autofunction:: $0" "autofunction" nil nil nil "/home/hlissner/.config/doom/snippets/rst-mode/autofunction" nil nil)
                       ("auto" ".. autoclass:: $0\n   ${1::members: ${2:members}}" "autoclass" nil nil nil "/home/hlissner/.config/doom/snippets/rst-mode/autoclass" nil nil)))


;;; Do not edit! File generated at Wed Mar 13 18:35:13 2019
