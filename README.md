# Emacs Yasnippet Library
[![MIT](https://img.shields.io/badge/license-MIT-green.svg)](./LICENSE)

My personal [yasnippet](https://github.com/capitaomorte/yasnippet) snippets for
my [Emacs configuration](https://github.com/hlissner/.emacs.d).

I make use of a lot of custom functionality, like `!%!` and `%alias`, which
you'll find in `fundamental-mode/.yas-setup.el`.

## Install

Clone this repo somewhere, then add that directory to `yas-snippet-dirs`.

```emacs-lisp
(setq yas-snippet-dirs
      (append (list 'emacs-snippets-dir)
              ;; These are meant to replace the built-in snippets.
              (delq 'yas-installed-snippets-dir yas-snippet-dirs)))
```

If you're using [Doom Emacs][emacs.d], place this in any module's packages.el:

```emacs-lisp
(package! emacs-snippets
  :recipe (:fetcher github
           :repo "hlissner/emacs-snippets"
           :files ("*")))
```

[emacs.d]: https://github.com/hlissner/doom-emacs
