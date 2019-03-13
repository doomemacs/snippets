;;; Compiled snippets and support files for `nxml-mode'
;;; Snippet definitions:
;;;
(yas-define-snippets 'nxml-mode
                     '(("ul.id" "<ul id=\"$1\">\n  $0\n</ul>" "<ul id=\"...\">...</ul>" nil
                        ("list")
                        nil "/home/hlissner/.config/doom/snippets/nxml-mode/ul.id" nil nil)
                       ("ul.class" "<ul class=\"$1\">\n  $0\n</ul>" "<ul class=\"...\">...</ul>" nil
                        ("list")
                        nil "/home/hlissner/.config/doom/snippets/nxml-mode/ul.class" nil nil)
                       ("ul" "<ul>\n  $0\n</ul>" "<ul>...</ul>" nil nil nil "/home/hlissner/.config/doom/snippets/nxml-mode/ul" nil nil)
                       ("tr" "<tr>\n  $0\n</tr>" "<tr>...</tr>" nil nil nil "/home/hlissner/.config/doom/snippets/nxml-mode/tr" nil nil)
                       ("title" "<title>$1</title>" "<title>...</title>" nil nil nil "/home/hlissner/.config/doom/snippets/nxml-mode/title" nil nil)
                       ("th" "<th$1>$2</th>" "<th>...</th>" nil nil nil "/home/hlissner/.config/doom/snippets/nxml-mode/th" nil nil)
                       ("td" "<td$1>$2</td>" "<td>...</td>" nil nil nil "/home/hlissner/.config/doom/snippets/nxml-mode/td" nil nil)
                       ("tag.2l" "<${1:tag}>\n  $2\n</$1>$0" "<tag> \\n...\\n</tag>" nil nil nil "/home/hlissner/.config/doom/snippets/nxml-mode/tag.2l" nil nil)
                       ("tag.1l" "<${1:tag}>$2</$1>$0" "<tag>...</tag>" nil nil nil "/home/hlissner/.config/doom/snippets/nxml-mode/tag.1l" nil nil)
                       ("table" "<table>\n  $0\n</table>" "<table>...</table>" nil nil nil "/home/hlissner/.config/doom/snippets/nxml-mode/table" nil nil)
                       ("style" "<style type=\"text/css\" media=\"${1:screen}\">\n  `%`$0\n</style>\n" "<style type=\"text/css\" media=\"...\">...</style>" nil nil nil "/home/hlissner/.config/doom/snippets/nxml-mode/style" nil nil)
                       ("span.id" "<span id=\"$1\">$2</span>" "<span id=\"...\">...</span>" nil nil nil "/home/hlissner/.config/doom/snippets/nxml-mode/span.id" nil nil)
                       ("span.class" "<span class=\"$1\">$2</span>" "<span class=\"...\">...</span>" nil nil nil "/home/hlissner/.config/doom/snippets/nxml-mode/span.class" nil nil)
                       ("span" "<span>$1</span>" "<span>...</span>" nil nil nil "/home/hlissner/.config/doom/snippets/nxml-mode/span" nil nil)
                       ("quote" "<blockquote>\n  $1\n</blockquote>" "<blockquote>...</blockquote>" nil nil nil "/home/hlissner/.config/doom/snippets/nxml-mode/quote" nil nil)
                       ("pre" "<pre>\n  $0\n</pre>" "<pre>...</pre>" nil nil nil "/home/hlissner/.config/doom/snippets/nxml-mode/pre" nil nil)
                       ("p" "<p>$1</p>" "<p>...</p>" nil nil nil "/home/hlissner/.config/doom/snippets/nxml-mode/p" nil nil)
                       ("ol.id" "<ol id=\"$1\">\n  $0\n</ol>" "<ol id=\"...\">...</ol>" nil
                        ("list")
                        nil "/home/hlissner/.config/doom/snippets/nxml-mode/ol.id" nil nil)
                       ("ol.class" "<ol class=\"$1\">\n  $0\n</ol>" "<ol class=\"...\">...</ol>" nil
                        ("list")
                        nil "/home/hlissner/.config/doom/snippets/nxml-mode/ol.class" nil nil)
                       ("ol" "<ol>\n  $0\n</ol>" "<ol>...</ol>" nil nil nil "/home/hlissner/.config/doom/snippets/nxml-mode/ol" nil nil)
                       ("name" "<a name=\"$1\"></a>" "<a name=\"...\"></a>" nil nil nil "/home/hlissner/.config/doom/snippets/nxml-mode/name" nil nil)
                       ("meta" "<meta name=\"${1:generator}\" content=\"${2:content}\" />" "<meta name=\"...\" content=\"...\" />" nil
                        ("meta")
                        nil "/home/hlissner/.config/doom/snippets/nxml-mode/meta" nil nil)
                       ("li.class" "<li class=\"$1\">$2</li>" "<li class=\"...\">...</li>" nil
                        ("list")
                        nil "/home/hlissner/.config/doom/snippets/nxml-mode/li.class" nil nil)
                       ("li" "<li>$1</li>" "<li>...</li>" nil nil nil "/home/hlissner/.config/doom/snippets/nxml-mode/li" nil nil)
                       ("input" "<input type=\"$1\" name=\"$2\" value=\"$3\" />" "<input ... />" nil nil nil "/home/hlissner/.config/doom/snippets/nxml-mode/input" nil nil)
                       ("img" "<img src=\"$1\" alt=\"$2\" />" "<img src=\"...\" alt=\"...\" />" nil nil nil "/home/hlissner/.config/doom/snippets/nxml-mode/img" nil nil)
                       ("html" "<html xmlns=\"http://www.w3.org/1999/xhtml\" xml:lang=\"${1:en}\" lang=\"${2:en}\">\n  $0\n</html>\n" "<html xmlns=\"...\">...</html>" nil nil nil "/home/hlissner/.config/doom/snippets/nxml-mode/html" nil nil)
                       ("a" "<a href=\"$1\">$2</a>" "<a href=\"...\">...</a>" nil nil nil "/home/hlissner/.config/doom/snippets/nxml-mode/href" nil nil)
                       ("hr" "<hr />\n" "<hr />" nil nil nil "/home/hlissner/.config/doom/snippets/nxml-mode/hr" nil nil)
                       ("head" "<head>\n  $0\n</head>" "<head>...</head>" nil nil nil "/home/hlissner/.config/doom/snippets/nxml-mode/head" nil nil)
                       ("h6" "<h6>$1</h6>" "<h6>...</h6>" nil
                        ("header")
                        nil "/home/hlissner/.config/doom/snippets/nxml-mode/h6" nil nil)
                       ("h5" "<h5>$1</h5>" "<h5>...</h5>" nil
                        ("header")
                        nil "/home/hlissner/.config/doom/snippets/nxml-mode/h5" nil nil)
                       ("h4" "<h4>$1</h4>" "<h4>...</h4>" nil
                        ("header")
                        nil "/home/hlissner/.config/doom/snippets/nxml-mode/h4" nil nil)
                       ("h3" "<h3>$1</h3>" "<h3>...</h3>" nil
                        ("header")
                        nil "/home/hlissner/.config/doom/snippets/nxml-mode/h3" nil nil)
                       ("h2" "<h2>$1</h2>" "<h2>...</h2>" nil
                        ("header")
                        nil "/home/hlissner/.config/doom/snippets/nxml-mode/h2" nil nil)
                       ("h1" "<h1>$1</h1>" "<h1>...</h1>" nil
                        ("header")
                        nil "/home/hlissner/.config/doom/snippets/nxml-mode/h1" nil nil)
                       ("form" "<form method=\"$1\" action=\"$2\">\n  $0\n</form>" "<form method=\"...\" action=\"...\"></form>" nil nil nil "/home/hlissner/.config/doom/snippets/nxml-mode/form" nil nil)
                       ("doctype.xhtml1_transitional" "<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">" "DocType XHTML 1.0 Transitional" nil
                        ("meta")
                        nil "/home/hlissner/.config/doom/snippets/nxml-mode/doctype.xhtml1_transitional" nil nil)
                       ("doctype.xhtml1_strict" "<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Strict//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd\">" "DocType XHTML 1.0 Strict" nil
                        ("meta")
                        nil "/home/hlissner/.config/doom/snippets/nxml-mode/doctype.xhtml1_strict" nil nil)
                       ("code.class" "<code class=\"$1\">\n  $0\n</code>" "<code class=\"...\">...</code>" nil nil nil "/home/hlissner/.config/doom/snippets/nxml-mode/code.class" nil nil)
                       ("code" "<code>\n  $0\n</code>" "<code>...</code>" nil nil nil "/home/hlissner/.config/doom/snippets/nxml-mode/code" nil nil)
                       ("br" "<br />" "<br />" nil nil nil "/home/hlissner/.config/doom/snippets/nxml-mode/br" nil nil)
                       ("body" "<body$1>\n  $0\n</body>" "<body>...</body>" nil nil nil "/home/hlissner/.config/doom/snippets/nxml-mode/body" nil nil)))


;;; Do not edit! File generated at Wed Mar 13 18:35:12 2019
