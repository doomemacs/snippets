[![MIT](https://img.shields.io/badge/license-MIT-green.svg)](./LICENSE)

# Emacs Yasnippet Library

My personal [yasnippet](https://github.com/capitaomorte/yasnippet) snippets for
my [emacs.d].

## Notes to snippet authors

+ `%` is aliased to `yas-selected-text` for convenience.
+ My [emacs config][emacs.d] has project-specific minor modes. A `+` prefix
  denotes these minor modes, e.g. `+php-laravel-mode`.
+ This library uses a lot of custom helper functions, like `(!%!)` and `(%1)`.
  These are defined in `fundamental-mode/.yas-setup.el`. See their docstrings
  to see what they do.
+ The `(%alias TRIGGER &optional MODE)` function is available for setting up
  multiple triggers for one snippet. e.g.

  ```emacs-lisp
  ;; js-mode/class
  # name: class
  # --
  class ${1:Name} {
      $0
  }

  ;; js-mode/cl
  # name: class
  # uuid: cl
  # type: command
  # --
  (%alias "class")
  ```

  Note: if your alias snippets share the same `name`, they *must* have a unique
  `uuid`.

## Install

Clone this repo somewhere, then add its directory to `load-path`, and...

``` emacs-lisp
(require 'emacs-snippets)
;; OR
(use-package emacs-snippets :after yasnippet)
```

`emacs-snippets` sets itself up when `yasnippet` first loads.

If you're using [Doom Emacs][emacs.d], place this in any module's packages.el:

```emacs-lisp
(package! emacs-snippets
  :recipe (:fetcher github
           :repo "hlissner/emacs-snippets"
           :files ("*")))
```

Note: if you use yas-minor-mode (instead of yas-global-mode), you must manually
call `yas-reload-all`. Doom does this in `feature/snippets` for you:

```emacs-lisp
;; Ensure `yas-reload-all' is called as late as possible. Other modules could
;; have additional configuration for yasnippet. For example, file-templates.
(add-transient-hook! 'yas-minor-mode-hook (yas-reload-all))
```

[emacs.d]: https://github.com/hlissner/doom-emacs
