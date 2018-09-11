

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
;;(package-initialize)

;; boot into my program world
(load "~/.emacs.d/layman/layman.el")
(layman/booting)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
	(pylint py-autopep8 py-import-check py-test py-yapf pydoc zenburn-theme yasnippet-snippets undo-tree spaceline solarized-theme mode-icons minimap irony ibuffer-projectile ibuffer-git hl-todo hl-indent hl-anything google-c-style go-mode doom-themes cmake-mode centered-cursor-mode auto-package-update auto-indent-mode atom-one-dark-theme ac-html-bootstrap ac-html ac-c-headers))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
