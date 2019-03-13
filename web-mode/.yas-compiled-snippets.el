;;; Compiled snippets and support files for `web-mode'
;;; Snippet definitions:
;;;
(yas-define-snippets 'web-mode
                     '(("video" "<video width=\"${1:560}\" height=\"${2:340}\" controls>\n  <source src=\"${3:path/to/myvideo}.mp4\" type='video/mp4; codecs=\"avc1.42E01E, mp4a.40.2\"'>\n  <source src=\"$3.ogv\" type='video/ogg; codecs=\"theora, vorbis\"'>\n  ${0:Your browser does not support my HTML5 video player}\n</video>" "HTML5 video player" nil nil nil "/home/hlissner/.config/doom/snippets/web-mode/video" nil nil)
                       ("php" "<?php `(!%!)`$0 ?>" "<?php ... ?>" nil nil nil "/home/hlissner/.config/doom/snippets/web-mode/php" nil nil)))


;;; Do not edit! File generated at Wed Mar 13 18:35:13 2019
