(eval-when-compile (require 'subr-x))

(defun +php-laravel-mode--get-namespace ()
  "Get a formatted namespace for the current PHP file"
  (substring
   (replace-regexp-in-string "/" (regexp-quote "\\")
                             (thread-first
                               buffer-file-name
                               (file-relative-name (doom-project-root))
                               file-name-directory
                               capitalize))
   0
   -1))

(defun +php-laravel-mode--get-class-name ()
  "Get a formatted class name for the current PHP file"
  (string-join (mapcar 'capitalize
                       (split-string
                        (let ((case-fold-search nil))
                          (replace-regexp-in-string
                           "\\([[:lower:]]\\)\\([[:upper:]]\\)" "\\1 \\2"
                           (replace-regexp-in-string
                            "\\([[:upper:]]\\)\\([[:upper:]][0-9[:lower:]]\\)" "\\1 \\2"
                            (file-name-base buffer-file-name))))
                        "[^[:word:]0-9]+"
                        t))))