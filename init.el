;;
;; Wxthon's Emacs Config File
;;

;; Add ~/.emacs.d/lisp to load-path
(add-to-list 'load-path "~/.emacs.d/lisp")
(add-to-list 'load-path "~/.emacs.d/lisp/themes")
(add-to-list 'load-path "~/.emacs.d/lisp/replace-colorthemes")
(add-to-list 'load-path "~/.emacs.d/init")

(load "init-base")
(load "init-key")
(load "init-eshell")
(load "init-erc")
;;(load "init-slime")
(load "init-dict")
;;(load "init-emms")
;;(load "init-radio")
