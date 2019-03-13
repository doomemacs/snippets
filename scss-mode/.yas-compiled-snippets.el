;;; Compiled snippets and support files for `scss-mode'
;;; Snippet definitions:
;;;
(yas-define-snippets 'scss-mode
                     '(("zip" "zip(${1:$list1}, ${2:$list2})" "zip($list1, $list2, ...)" nil
                        ("List functions")
                        nil "/home/hlissner/.config/doom/snippets/scss-mode/zip" nil nil)
                       ("variable-exists" "variable-exists(${1:$name})" "variable-exists($name)" nil
                        ("Introspection functions")
                        nil "/home/hlissner/.config/doom/snippets/scss-mode/variable-exists" nil nil)
                       ("unquote" "unquote(${1:$string})" "unquote($string)" nil
                        ("String functions")
                        nil "/home/hlissner/.config/doom/snippets/scss-mode/unquote" nil nil)
                       ("unitless" "unitless(${1:$number})" "unitless($number)" nil
                        ("Introspection functions")
                        nil "/home/hlissner/.config/doom/snippets/scss-mode/unitless" nil nil)
                       ("unit" "unit(${1:$number})" "unit($number)" nil
                        ("Introspection functions")
                        nil "/home/hlissner/.config/doom/snippets/scss-mode/unit" nil nil)
                       ("unique-id" "unique-id()" "unique-id()" nil
                        ("Misc functions")
                        nil "/home/hlissner/.config/doom/snippets/scss-mode/unique-id" nil nil)
                       ("type-of" "type-of(${1:$value})" "type-of($value)" nil
                        ("Introspection functions")
                        nil "/home/hlissner/.config/doom/snippets/scss-mode/type-of" nil nil)
                       ("transparentize" "transparentize(${1:$color}, ${2:$amount})" "transparentize($color, $amount)" nil
                        ("Opacity functions")
                        nil "/home/hlissner/.config/doom/snippets/scss-mode/transparentize" nil nil)
                       ("to-upper-case" "to-upper-case(${1:$string})" "to-upper-case($string)" nil
                        ("String functions")
                        nil "/home/hlissner/.config/doom/snippets/scss-mode/to-upper-case" nil nil)
                       ("to-lower-case" "to-lower-case(${1:$string})" "to-lower-case($string)" nil
                        ("String functions")
                        nil "/home/hlissner/.config/doom/snippets/scss-mode/to-lower-case" nil nil)
                       ("str-slice" "str-slice(${1:$string}, ${2:$start-at}${3:, ${4:$end-at}})" "str-slice($string, $start-at, [$end-at])" nil
                        ("String functions")
                        nil "/home/hlissner/.config/doom/snippets/scss-mode/str-slice" nil nil)
                       ("str-length" "str-length(${1:$string})" "str-length($string)" nil
                        ("String functions")
                        nil "/home/hlissner/.config/doom/snippets/scss-mode/str-length" nil nil)
                       ("str-insert" "str-insert(${1:$string}, ${2:$insert}, ${3:$index})" "str-insert($string, $insert, $index)" nil
                        ("String functions")
                        nil "/home/hlissner/.config/doom/snippets/scss-mode/str-insert" nil nil)
                       ("str-index" "str-index(${1:$string}, ${2:$substring})" "str-index($string, $substring)" nil
                        ("String functions")
                        nil "/home/hlissner/.config/doom/snippets/scss-mode/str-index" nil nil)
                       ("set-nth" "set-nth(${1:$list}, ${2:$n}, ${3:$value})" "set-nth($list, $n, $value)" nil
                        ("List functions")
                        nil "/home/hlissner/.config/doom/snippets/scss-mode/set-nth" nil nil)
                       ("scale-color" "scale-color(${1:$color}, ${2:[$r]}, ${3:[$g]}, ${4:[$b]}, ${5:[$sat]}, ${6:[$light]}, ${7:[$alpha]})" "scale-color($color, [$r], [$g], [$b], [$sat], [$light], [$alpha])" nil
                        ("Other color functions")
                        nil "/home/hlissner/.config/doom/snippets/scss-mode/scale-color" nil nil)
                       ("saturation" "saturation(${1:$color})" "saturation($color)" nil
                        ("HSL functions")
                        nil "/home/hlissner/.config/doom/snippets/scss-mode/saturation" nil nil)
                       ("saturate" "saturate(${1:$color}, ${2:$amount})" "saturate($color, $amount)" nil
                        ("HSL functions")
                        nil "/home/hlissner/.config/doom/snippets/scss-mode/saturate" nil nil)
                       ("round" "round(${1:$number})" "round($number)" nil
                        ("Number functions")
                        nil "/home/hlissner/.config/doom/snippets/scss-mode/round" nil nil)
                       ("rgba" "rgba(${1:$color}, ${2:$alpha})" "rgba($color, $alpha)" nil
                        ("Opacity functions")
                        nil "/home/hlissner/.config/doom/snippets/scss-mode/rgbao" nil nil)
                       ("rgba" "rgba(${1:$red}, ${2:$green}, ${3:$blue}, ${4:alpha})" "rgb($red, $green, $blue, $alpha)" nil
                        ("RGB functions")
                        nil "/home/hlissner/.config/doom/snippets/scss-mode/rgba" nil nil)
                       ("rgb" "rgb(${1:$red}, ${2:$green}, ${3:$blue})" "rgb($red, $green, $blue)" nil
                        ("RGB functions")
                        nil "/home/hlissner/.config/doom/snippets/scss-mode/rgb" nil nil)
                       ("red" "red(${1:color})" "red($color)" nil
                        ("RGB functions")
                        nil "/home/hlissner/.config/doom/snippets/scss-mode/red" nil nil)
                       ("random" "random(${1:[$limit]})" "random([$limit])" nil
                        ("Number functions")
                        nil "/home/hlissner/.config/doom/snippets/scss-mode/random" nil nil)
                       ("quote" "quote(${1:$string})" "quote($string)" nil
                        ("String functions")
                        nil "/home/hlissner/.config/doom/snippets/scss-mode/quote" nil nil)
                       ("percentage" "percentage(${1:$number})" "percentage($number)" nil
                        ("Number functions")
                        nil "/home/hlissner/.config/doom/snippets/scss-mode/percentage" nil nil)
                       ("opacity" "opacity(${1:$color})" "opacity($color)" nil
                        ("Opacity functions")
                        nil "/home/hlissner/.config/doom/snippets/scss-mode/opacity" nil nil)
                       ("opacify" "opacify(${1:$color}, ${2:$amount})" "opacify($color, $amount)" nil
                        ("Opacity functions")
                        nil "/home/hlissner/.config/doom/snippets/scss-mode/opacify" nil nil)
                       ("nth" "nth(${1:$list}, ${2:$n})" "nth($list, $n)" nil
                        ("List functions")
                        nil "/home/hlissner/.config/doom/snippets/scss-mode/nth" nil nil)
                       ("mixin-exists" "mixin-exists(${1:$name})" "mixin-exists($name)" nil
                        ("Introspection functions")
                        nil "/home/hlissner/.config/doom/snippets/scss-mode/mixin-exists" nil nil)
                       ("mix" "mix(${1:$color1}, ${2:$color2}${3:, ${4:$weight}})" "mix($color1, $color2, [$weight])" nil
                        ("RGB functions")
                        nil "/home/hlissner/.config/doom/snippets/scss-mode/mix" nil nil)
                       ("min" "min(${1:$n1}, ${2:$n2})" "min($n1, $n2, ...)" nil
                        ("Number functions")
                        nil "/home/hlissner/.config/doom/snippets/scss-mode/min" nil nil)
                       ("max" "max(${1:$n1}, ${2:$n2})" "max($n1, $n2, ...)" nil
                        ("Number functions")
                        nil "/home/hlissner/.config/doom/snippets/scss-mode/max" nil nil)
                       ("map-values" "map-values(${1:$map})" "map-values($map)" nil
                        ("Map functions")
                        nil "/home/hlissner/.config/doom/snippets/scss-mode/map-values" nil nil)
                       ("map-remove" "map-remove(${1:$map}, ${2:$key})" "map-remove($map, $key, ...)" nil
                        ("Map functions")
                        nil "/home/hlissner/.config/doom/snippets/scss-mode/map-remove" nil nil)
                       ("map-merge" "map-merge(${1:$map1}, ${2:$map2})" "map-merge($map1, $map2)" nil
                        ("Map functions")
                        nil "/home/hlissner/.config/doom/snippets/scss-mode/map-merge" nil nil)
                       ("map-keys" "map-keys(${1:$map})" "map-keys($map)" nil
                        ("Map functions")
                        nil "/home/hlissner/.config/doom/snippets/scss-mode/map-keys" nil nil)
                       ("map-has-key" "map-has-key(${1:$map}, ${2:$key})" "map-has-key($map, $key)" nil
                        ("Map functions")
                        nil "/home/hlissner/.config/doom/snippets/scss-mode/map-has-key" nil nil)
                       ("map-get" "map-get(${1:$map}, ${2:$key})" "map-get($map, $key)" nil
                        ("Map functions")
                        nil "/home/hlissner/.config/doom/snippets/scss-mode/map-get" nil nil)
                       ("list-separator" "list-separator(${1:$list})" "list-separator($list)" nil
                        ("List functions")
                        nil "/home/hlissner/.config/doom/snippets/scss-mode/list-separator" nil nil)
                       ("lightness" "lightness(${1:$color})" "lightness($color)" nil
                        ("HSL functions")
                        nil "/home/hlissner/.config/doom/snippets/scss-mode/lightness" nil nil)
                       ("lighten" "lighten(${1:$color}, ${2:$amount})" "lighten($color, $amount)" nil
                        ("HSL functions")
                        nil "/home/hlissner/.config/doom/snippets/scss-mode/lighten" nil nil)
                       ("length" "length(${1:$list})" "length($list)" nil
                        ("List functions")
                        nil "/home/hlissner/.config/doom/snippets/scss-mode/length" nil nil)
                       ("keywords" "keywords(${1:$args})" "keywords($args)" nil
                        ("Map functions")
                        nil "/home/hlissner/.config/doom/snippets/scss-mode/keywords" nil nil)
                       ("join" "join(${1:$list1}, ${2:$list2}, ${3:[$sep]})" "join($list1, $list2, [$separator])" nil
                        ("List functions")
                        nil "/home/hlissner/.config/doom/snippets/scss-mode/join" nil nil)
                       ("invert" "invert(${1:$color})" "invert($color)" nil
                        ("HSL functions")
                        nil "/home/hlissner/.config/doom/snippets/scss-mode/invert" nil nil)
                       ("inspect" "inspect(${1:$value})" "inspect($value)" nil
                        ("Introspection functions")
                        nil "/home/hlissner/.config/doom/snippets/scss-mode/inspect" nil nil)
                       ("index" "index(${1:$list}, ${2:$value})" "index($list, $value)" nil
                        ("List functions")
                        nil "/home/hlissner/.config/doom/snippets/scss-mode/index" nil nil)
                       ("ie-hex-str" "ie-hex-str(${1:$color})" "ie-hex-str($color)" nil
                        ("Other color functions")
                        nil "/home/hlissner/.config/doom/snippets/scss-mode/ie-hex-str" nil nil)
                       ("hue" "hue(${1:$color})" "hue($color)" nil
                        ("HSL functions")
                        nil "/home/hlissner/.config/doom/snippets/scss-mode/hue" nil nil)
                       ("hsla" "hsla(${1:$hue}, ${2:$saturation}, ${3:$lightness}, ${4:alpha})" "hsl($hue, $saturation, $lightness, $alpha)" nil
                        ("HSL functions")
                        nil "/home/hlissner/.config/doom/snippets/scss-mode/hsla" nil nil)
                       ("hsl" "hsl(${1:$hue}, ${2:$saturation}, ${3:$lightness})" "hsl($hue, $saturation, $lightness)" nil
                        ("HSL functions")
                        nil "/home/hlissner/.config/doom/snippets/scss-mode/hsl" nil nil)
                       ("green" "green(${1:color})" "green($color)" nil
                        ("RGB functions")
                        nil "/home/hlissner/.config/doom/snippets/scss-mode/green" nil nil)
                       ("grayscale" "grayscale(${1:$color})" "grayscale($color)" nil
                        ("HSL functions")
                        nil "/home/hlissner/.config/doom/snippets/scss-mode/grayscale" nil nil)
                       ("global-variable-exists" "global-variable-exists(${1:$name})" "global-variable-exists($name)" nil
                        ("Introspection functions")
                        nil "/home/hlissner/.config/doom/snippets/scss-mode/global-variable-exists" nil nil)
                       ("function-exists" "function-exists(${1:$name})" "function-exists($name)" nil
                        ("Introspection functions")
                        nil "/home/hlissner/.config/doom/snippets/scss-mode/function-exists" nil nil)
                       ("for" "@for \\$i from ${1:1} through ${2:10} {\n    `%`$0\n}\n" "@for loop" nil nil nil "/home/hlissner/.config/doom/snippets/scss-mode/for" nil nil)
                       ("floor" "floor(${1:$number})" "floor($number)" nil
                        ("Number functions")
                        nil "/home/hlissner/.config/doom/snippets/scss-mode/floor" nil nil)
                       ("feature-exists" "feature-exists(${1:$feature})" "feature-exists($feature)" nil
                        ("Introspection functions")
                        nil "/home/hlissner/.config/doom/snippets/scss-mode/feature-exists" nil nil)
                       ("fade-out" "fade-out(${1:$color}, ${2:$amount})" "fade-out($color, $amount)" nil
                        ("Opacity functions")
                        nil "/home/hlissner/.config/doom/snippets/scss-mode/fade-out" nil nil)
                       ("fade-in" "fade-in(${1:$color}, ${2:$amount})" "fade-in($color, $amount)" nil
                        ("Opacity functions")
                        nil "/home/hlissner/.config/doom/snippets/scss-mode/fade-in" nil nil)
                       ("extend" "@extend `(%1)`$0;\n" "@extend" nil nil nil "/home/hlissner/.config/doom/snippets/scss-mode/extend" nil nil)
                       ("elseif" "@else if ${1:condition} {\n    `%`$0\n}\n" "@elseif" nil nil nil "/home/hlissner/.config/doom/snippets/scss-mode/elseif" nil nil)
                       ("else" "@else {\n    `%`$0\n}\n" "@else" nil nil nil "/home/hlissner/.config/doom/snippets/scss-mode/else" nil nil)
                       ("each" "@each \\$${1:var} in ${2:list, of, things} {\n    `%`$0\n}\n" "@each" nil nil nil "/home/hlissner/.config/doom/snippets/scss-mode/each" nil nil)
                       ("desaturate" "desaturate(${1:$color}, ${2:$amount})" "desaturate($color, $amount)" nil
                        ("HSL functions")
                        nil "/home/hlissner/.config/doom/snippets/scss-mode/desaturate" nil nil)
                       ("darken" "darken(${1:$color}, ${2:$amount})" "darken($color, $amount)" nil
                        ("HSL functions")
                        nil "/home/hlissner/.config/doom/snippets/scss-mode/darken" nil nil)
                       ("complement" "complement(${1:$color})" "complement($color)" nil
                        ("HSL functions")
                        nil "/home/hlissner/.config/doom/snippets/scss-mode/complement" nil nil)
                       ("comparable" "comparable(${1:$number1}, ${2:$number2})" "comparable($number1, $number2)" nil
                        ("Introspection functions")
                        nil "/home/hlissner/.config/doom/snippets/scss-mode/comparable" nil nil)
                       ("change-color" "change-color(${1:$color}, ${2:[$r]}, ${3:[$g]}, ${4:[$b]}, ${5:[$hue]}, ${6:[$sat]}, ${7:[$light]}, ${8:[$alpha]})" "change-color($color, [$r], [$g], [$b], [$hue], [$sat], [$light], [$alpha])" nil
                        ("Other color functions")
                        nil "/home/hlissner/.config/doom/snippets/scss-mode/change-color" nil nil)
                       ("ceil" "ceil(${1:$number})" "ceil($number)" nil
                        ("Number functions")
                        nil "/home/hlissner/.config/doom/snippets/scss-mode/ceil" nil nil)
                       ("call" "call(${1:$name}, ${2:$args...})" "call($name, ...)" nil
                        ("Introspection functions")
                        nil "/home/hlissner/.config/doom/snippets/scss-mode/call" nil nil)
                       ("blue" "blue(${1:color})" "blue($color)" nil
                        ("RGB functions")
                        nil "/home/hlissner/.config/doom/snippets/scss-mode/blue" nil nil)
                       ("append" "append(${1:$list}, ${2:$value}, ${3:[$sep]})" "append($list, $value, [$separator])" nil
                        ("List functions")
                        nil "/home/hlissner/.config/doom/snippets/scss-mode/append" nil nil)
                       ("alpha" "alpha(${1:$color})" "alpha($color)" nil
                        ("Opacity functions")
                        nil "/home/hlissner/.config/doom/snippets/scss-mode/alpha" nil nil)
                       ("adjust-hue" "adjust-hue(${1:$color}, ${2:$degree})" "adjust-hue($color, $degree)" nil
                        ("HSL functions")
                        nil "/home/hlissner/.config/doom/snippets/scss-mode/adjust-hue" nil nil)
                       ("adjust-color" "adjust-color(${1:$color}, ${2:[$r]}, ${3:[$g]}, ${4:[$b]}, ${5:[$hue]}, ${6:[$sat]}, ${7:[$light]}, ${8:[$alpha]})" "adjust-color($color, [$r], [$g], [$b], [$hue], [$sat], [$light], [$alpha])" nil
                        ("Other color functions")
                        nil "/home/hlissner/.config/doom/snippets/scss-mode/adjust-color" nil nil)
                       ("abs" "abs(${1:$number})" "abs($number)" nil
                        ("Number functions")
                        nil "/home/hlissner/.config/doom/snippets/scss-mode/abs" nil nil)
                       ("while" "@while ${1:condition} {\n    `%`$0\n}\n" "@while" nil nil nil "/home/hlissner/.config/doom/snippets/scss-mode/@while" nil nil)
                       ("mix" "@mixin ${1:mixin-name}($2) {\n    `%`$0\n}" "@mixin" nil nil nil "/home/hlissner/.config/doom/snippets/scss-mode/@mixin" nil nil)
                       ("inc" "@include `(%1)`${1:mixin-name};" "@include mixin" nil nil nil "/home/hlissner/.config/doom/snippets/scss-mode/@include" nil nil)
                       ("if" "@if ${1:condition} {\n    `%`$0\n}" "@if" nil nil nil "/home/hlissner/.config/doom/snippets/scss-mode/@if" nil nil)))


;;; Do not edit! File generated at Wed Mar 13 18:35:13 2019
