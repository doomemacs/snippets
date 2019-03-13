;;; Compiled snippets and support files for `html-mode'
;;; Snippet definitions:
;;;
(yas-define-snippets 'html-mode
                     '(("th" "<th$1>$2</th>" "<th>...</th>" nil
                        ("table")
                        nil "/home/hlissner/.config/doom/snippets/html-mode/th" nil nil)
                       ("textarea" "<textarea name=\"$1\" id=\"$2\" rows=\"$3\" cols=\"$4\" tabindex=\"$5\"></textarea>" "<textarea ...></textarea>" nil nil nil "/home/hlissner/.config/doom/snippets/html-mode/textarea" nil nil)
                       ("scriptsrc" "<script type=\"text/javascript\" src=\"$1\"></script>\n" "<script type=\"text/javascript\" src=\"...\"></script>" nil nil nil "/home/hlissner/.config/doom/snippets/html-mode/scriptsrc" nil nil)
                       ("script" "<script type=\"text/javascript\">\n  $0\n</script>\n" "<script type=\"text/javascript\">...</script>" nil nil nil "/home/hlissner/.config/doom/snippets/html-mode/script" nil nil)
                       ("meta.http-equiv" "<meta name=\"${1:Content-Type}\" content=\"${2:text/html; charset=UTF-8}\" />" "<meta http-equiv=\"...\" content=\"...\" />" nil
                        ("meta")
                        nil "/home/hlissner/.config/doom/snippets/html-mode/meta.http-equiv" nil nil)
                       ("meta" "<meta name=\"${1:generator}\" content=\"${2:content}\" />" "<meta name=\"...\" content=\"...\" />" nil
                        ("meta")
                        nil "/home/hlissner/.config/doom/snippets/html-mode/meta" nil nil)
                       ("mailto" "<a href=\"mailto:${1:john@doe.com}\">`(!%!)`$0</a>" "<a href=\"mailto:...@...\">...</a>" nil nil nil "/home/hlissner/.config/doom/snippets/html-mode/mailto" nil nil)
                       ("linkie" "<!--[if IE${1: version}]>\n<link rel=\"${2:stylesheet}\" href=\"${3:url}\" type=\"${4:text/css}\" media=\"${5:screen}\" />\n<![endif]-->\n" "<!--[if IE]><link stylesheet=\"...\" /><![endif]-->" nil nil nil "/home/hlissner/.config/doom/snippets/html-mode/linkie" nil nil)
                       ("link" "<link rel=\"${1:stylesheet}\" href=\"${2:url}\" type=\"${3:text/css}\" media=\"${4:screen}\" />" "<link rel=\"stylesheet\" ... />" nil nil nil "/home/hlissner/.config/doom/snippets/html-mode/link" nil nil)
                       ("html.xmlns" "<html xmlns=\"http://www.w3.org/1999/xhtml\" xml:lang=\"${1:en}\" lang=\"${2:en}\">\n  $0\n</html>\n" "<html xmlns=\"...\">...</html>" nil nil nil "/home/hlissner/.config/doom/snippets/html-mode/html.xmlns" nil nil)
                       ("html" "<html>\n  $0\n</html>\n" "<html>...</html>" nil nil nil "/home/hlissner/.config/doom/snippets/html-mode/html" nil nil)
                       ("form" "<form method=\"$1\" id=\"$2\" action=\"$3\">\n  $0\n</form>" "<form method=\"...\" id=\"...\" action=\"...\"></form>" nil nil nil "/home/hlissner/.config/doom/snippets/html-mode/form" nil nil)
                       ("dt" "<dt>$1</dt>" "<dt> ... </dt>" nil
                        ("list")
                        nil "/home/hlissner/.config/doom/snippets/html-mode/dt" nil nil)
                       ("doctype.xhtml1_transitional" "<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">" "DocType XHTML 1.0 Transitional" nil
                        ("meta")
                        nil "/home/hlissner/.config/doom/snippets/html-mode/doctype.xhtml1_transitional" nil nil)
                       ("doctype.xhtml1_strict" "<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Strict//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd\">" "DocType XHTML 1.0 Strict" nil
                        ("meta")
                        nil "/home/hlissner/.config/doom/snippets/html-mode/doctype.xhtml1_strict" nil nil)
                       ("doctype.xhtml1_1" "<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.1//EN\" \"http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd\">" "DocType XHTML 1.1" nil
                        ("meta")
                        nil "/home/hlissner/.config/doom/snippets/html-mode/doctype.xhtml1_1" nil nil)
                       ("doctype.xhml1" "<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Frameset//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-frameset.dtd\">" "DocType XHTML 1.0 frameset" nil
                        ("meta")
                        nil "/home/hlissner/.config/doom/snippets/html-mode/doctype.xhml1" nil nil)
                       ("doctype" "<!DOCTYPE html>\n" "Doctype HTML 5" nil
                        ("meta")
                        nil "/home/hlissner/.config/doom/snippets/html-mode/doctype" nil nil)
                       ("dl" "<dl>\n    $0\n</dl>\n" "<dl> ... </dl>" nil
                        ("list")
                        nil "/home/hlissner/.config/doom/snippets/html-mode/dl" nil nil)
                       ("dd" "<dd>$1</dd>" "<dd> ... </dd>" nil
                        ("list")
                        nil "/home/hlissner/.config/doom/snippets/html-mode/dd" nil nil)))


;;; Do not edit! File generated at Wed Mar 13 18:35:12 2019
