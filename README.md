# Doom Emacs' Snippet Library

This repository contains the [yasnippet] snippets library for [Doom Emacs].

It also exposes a small API to assist in writing your own snippets, including
`doom-snippets-expand` for easily writing snippet aliases, and snippets for the
project/framework-specific minor modes available to [Doom Emacs] users.

## Install

+ [Doom Emacs] users need only enable the `:editor snippets` module.
+ This package isn't available on MELPA yet.
+ Otherwise, clone this repo somewhere local and use:

  ``` emacs-lisp
  (use-package doom-snippets
    :load-path "path/to/emacs-snippets"
    :after yasnippet)
  ```
  
 + [straight.el](https://github.com/raxod502/straight.el) users can use:
 
  ``` emacs-lisp
  (use-package doom-snippets
    :after yasnippet
    :straight (doom-snippets :type git :host github :repo "hlissner/doom-snippets" :files ("*.el" "*")))
  ``` 

## Snippets API
This library exposes a small API to assist you in writing your own snippets.
This is not an exhaustive list, but are the most useful.

### `doom-snippets-expand PROPERTY VALUE &optional MODE`

This is primarily used for creating snippet aliases. A snippet alias is a snippet
that will expand another snippet when used. e.g.

**In `js-mode/class`:**

```yasnippet
# name: class
# --
class ${1:Name} {
    $0
}
```

**In `js-mode/cl`:**

```yasnippet
# name: class
# key: cl
# type: command
# --
(doom-snippets-expand :name "class")
```

### `doom-snippets-format FORMAT &optional DEFAULT TRIM`

Returns `FORMAT`, which is a format string with a custom spec:

| spec | description                                                        |
|------|--------------------------------------------------------------------|
| %s   | The contents of your current selection (`yas-selected-text`)       |
| %!   | A newline, if your current selection spans more than a single line |
| %>   | A newline, unless the point is at EOL                              |

+ If `yas-selected-text` is empty, `DEFAULT` is used.
+ If `TRIM` is non-nil, whitespace on the ends of `yas-selected-text` is
  trimmed.
  
An example of its use:

```yasnippet
# -*- mode: snippet -*-
# name: while ... { ... }
# key: while
# --
while ${1:true} { `(doom-snippets-format "%n%s%n")`$0 }
```

If the selection consists of a single line, this will expand to:

``` javascript
while true { console.log("Hello world")| }
```

If it consists of multiple lines, it will expand to:

``` javascript
while true { 
  console.log("Hello")
  console.log("world")| 
}
```

`PROPERTY` can be `:uuid`, `:name`, `:key` or `:file`, and `MODE` restricts the
snippet search to a certain snippet table (by major mode). It isn't wise to use
`MODE` to reference snippets for other major modes, because it will only see
snippets that yasnippet have already loaded (and it lazy loads each table).

### `doom-snippets-without-trigger &rest BODY`

Performs `BODY` after moving the point to the start of the trigger keyword.

Without this, tests like `bolp` would meaninglessly fail because the cursor is
always in front of the word that triggered this snippet.

``` yasnippet
# -*- mode: snippet -*-
# name: .to_string()
# key: ts
# condition: (doom-snippets-without-trigger (eq (char-before) ?.))
# --
to_string()
```

### `doom-snippets-enable-short-helpers`

If this variable is non-nil, this package will define the following shortcut
function aliases for your convenience:

+ `!%!` = `(doom-snippets-format "%n%s%n")`
+ `!%` = `(doom-snippets-format "%n%s")`
+ `%$` = `(doom-snippets-format "%>")`
+ `(%expand ...)` = `(doom-snippets-expand ...)`
+ `(%format ...)` = `(doom-snippets-format ...)`
+ `(%without-trigger ...)` = `(doom-snippets-without-trigger ...)`


[yasnippet]: https://github.com/capitaomorte/yasnippet
[Doom Emacs]: https://github.com/hlissner/doom-emacs
