;;; Compiled snippets and support files for `fundamental-mode'
;;; contents of the .yas-setup.el support file:
;;;
;; -*- no-byte-compile: t; -*-

(eval-and-compile
  (require 'cl-lib)
  (require 'yasnippet)
  (when (version< emacs-version "26")
    (with-no-warnings
      (defalias 'if-let* #'if-let)
      (defalias 'when-let* #'when-let))))

(setq yas-wrap-around-region nil)

;; Simpler `yas-selected-text' alias for templates
(defvaralias '% 'yas-selected-text)

(defun %% (&optional default)
  "Used in snippets. Either display the selected text or DEFAULT."
  (or % default ""))

(defun !%! ()
  "Used in snippets. Shorthand defun to surround text with newlines if more than
one line."
  (when %
    (if (> (%lines %) 1)
        (concat "\n" % "\n")
      (string-trim %))))

(defun !% ()
  "Used in snippets. Shorthand defun for snippets: prepends a newline to
`yas-selected-text' IF it contains more than one line."
  (when %
    (if (> (%lines %) 1)
        (concat "\n" %)
      (string-trim %))))

(defun %1 ()
  "Used in snippets. Trim selection; do no further processing."
  (if % (string-trim %)))

(defun %$ ()
  "Used in snippets. Insert newline here if at `eolp'."
  (unless (eolp)
    "\n"))

(defun %lines (str)
  "Return how many lines are in STR."
  (if (and (stringp str)
           (not (string-empty-p str)))
      (length (split-string str "\\(\r\n\\|[\n\r]\\)"))
    0))

(defmacro %without-trigger (&rest body)
  "Preform BODY after moving over the trigger keyword. Without this, tests like
(bolp) would meaninglessly fail because the cursor is always in front of the
word that triggered this snippet."
  `(progn
     (unless (eq (char-before) ? )
       (backward-word))
     ,@body))

(defun %bolp ()
  "Return t if at beginning of indentation (i.e. only preceded by whitespace)."
  (or (bolp)
      (save-excursion
        (if (region-active-p)
            (goto-char (region-beginning))
          (unless (eq (char-before) ? )
            (backward-word)))
        (skip-chars-backward " \t")
        (bolp))))

(defun %alias (uuid &optional mode)
  "Expand a snippet with UUID in MODE."
  (if-let* ((snippet (let ((yas-choose-tables-first nil) ; avoid prompts
                           (yas-choose-keys-first nil))
                       (cl-loop for tpl in (yas--all-templates
                                            (yas--get-snippet-tables mode))
                                if (string= uuid (yas--template-uuid tpl))
                                return tpl))))
      (yas-expand-snippet snippet)
    (error "Couldn't find snippet" &optional ARGS)))
;;; Snippet definitions:
;;;
(yas-define-snippets 'fundamental-mode
                     '(("time" "`(current-time-string)`" "(current time)" nil nil nil "/home/hlissner/.config/doom/snippets/fundamental-mode/time" nil nil)
                       ("pi" "3.141592654\n" "pi" nil nil nil "/home/hlissner/.config/doom/snippets/fundamental-mode/pi" nil nil)
                       ("phi" "1.618033989\n" "phi" nil nil nil "/home/hlissner/.config/doom/snippets/fundamental-mode/phi" nil nil)
                       ("mode" "`comment-start`-*- mode: ${1:mode} -*-`comment-end`" "mode" nil nil nil "/home/hlissner/.config/doom/snippets/fundamental-mode/mode" nil nil)
                       ("elvar" "`comment-start`-*- ${1:var}: ${2:value} -*-`comment-end`" "var" nil nil nil "/home/hlissner/.config/doom/snippets/fundamental-mode/localvar" nil nil)
                       ("email" "`user-mail-address`\n" "(user's email)" nil nil nil "/home/hlissner/.config/doom/snippets/fundamental-mode/email" nil nil)
                       ("#!" "#!/usr/bin/env ${1:bash}\n\n$0\n" "bang" nil nil nil "/home/hlissner/.config/doom/snippets/fundamental-mode/bang" nil nil)))


;;; Do not edit! File generated at Wed Mar 13 18:35:12 2019
