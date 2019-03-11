[![MIT](https://img.shields.io/badge/license-MIT-green.svg)](./LICENSE)

# Emacs Yasnippet Library

The [yasnippet](https://github.com/capitaomorte/yasnippet) snippets bundled with
[Doom Emacs].

## Notes to snippet authors

+ `%` is aliased to `yas-selected-text` for convenience.
+ [Doom Emacs][emacs.d] has project-specific minor modes. A `+` prefix denotes
  these minor modes, e.g. `+php-laravel-mode`.
+ This library uses custom helper functions, like `(!%!)` and `(%1)`. These are
  defined in `fundamental-mode/.yas-setup.el`. See their docstrings to see what
  they do.
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

Note: alias snippets with the same `name` must have a unique `uuid`.

## Install

Clone this repo and:

``` emacs-lisp
(add-to-list 'load-path "path/to/emacs-snippets")
(require 'emacs-snippets)

;; OR

(use-package emacs-snippets
  :load-path "path/to/emacs-snippets"
  :after yasnippet)
```

`emacs-snippets` sets itself up when `yasnippet` first loads.

### Doom Emacs

No need to install this on Doom, it is included in the `:feature snippets`
module. That said, if you were to install it manually, for whatever reason,
place this in a module's (or your private) packages.el
(`~/.doom.d/packages.el`):

```emacs-lisp
(package! emacs-snippets
  :recipe (:fetcher github
           :repo "hlissner/emacs-snippets"
           :files ("*")))
```


[emacs.d]: https://github.com/hlissner/doom-emacs
