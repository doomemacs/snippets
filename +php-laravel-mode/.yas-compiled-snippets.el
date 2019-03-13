;;; Compiled snippets and support files for `+php-laravel-mode'
;;; Snippet definitions:
;;;
(yas-define-snippets '+php-laravel-mode
                     '(("route_inline" "Route::${1:get}('${2:/}', '${3:Controller@Action}')->name('${4:action}');" "Route::<req>(<url>, <route>)->name(<route>)" nil nil nil "/home/hlissner/.config/doom/snippets/+php-laravel-mode/route_inline" nil nil)
                       ("route" "Route::${1:get}('${2:/}', function () {\n    `%`$0\n});" "Route::<req>(<url>, <route>)" nil nil nil "/home/hlissner/.config/doom/snippets/+php-laravel-mode/route" nil nil)
                       ("nroute" "Route::${1:get}('${2:/}', ['as' => '${3:name}', function () {\n    `%`$0\n});" "Route::<req>(<url>, [..., <route>])" nil nil nil "/home/hlissner/.config/doom/snippets/+php-laravel-mode/nroute" nil nil)
                       ("match" "Route::match([${1:'get', 'post'}], '${2:/}', function () {\n    `%`$0\n});" "Route::match([...], <func>)" nil nil nil "/home/hlissner/.config/doom/snippets/+php-laravel-mode/match" nil nil)
                       ("group" "Route::group([$1], function() {\n    `%`$0\n});" "Route::group([<attrs>], <func>)" nil nil nil "/home/hlissner/.config/doom/snippets/+php-laravel-mode/group" nil nil)
                       ("any" "Route::any('${1:/}', function () {\n    `%`$0\n});" "Route::any(<uri>, <func>)" nil nil nil "/home/hlissner/.config/doom/snippets/+php-laravel-mode/any" nil nil)))


;;; Do not edit! File generated at Wed Mar 13 18:35:11 2019
