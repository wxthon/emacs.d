

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
;;(package-initialize)

;; boot into my program world
(add-to-list 'load-path (expand-file-name "~/.emacs.d/layman/"))

(load "~/.emacs.d/layman/layman.el")
(layman/booting)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
	("0598c6a29e13e7112cfbc2f523e31927ab7dce56ebb2016b567e1eff6dc1fd4f" "6b2636879127bf6124ce541b1b2824800afc49c6ccd65439d6eb987dbf200c36" "bf5bdab33a008333648512df0d2b9d9710bdfba12f6a768c7d2c438e1092b633" "10461a3c8ca61c52dfbbdedd974319b7f7fd720b091996481c8fb1dded6c6116" "d91ef4e714f05fff2070da7ca452980999f5361209e679ee988e3c432df24347" default)))
 '(package-selected-packages
   (quote
	(bazel-mode dockerfile-mode zenburn-theme yasnippet-snippets vue-html-mode undo-tree ssass-mode sphinx-mode sphinx-doc spacemacs-theme spaceline solarized-theme snippet pylint pydoc py-yapf py-test py-import-check py-autopep8 protobuf-mode phpcbf php-auto-yasnippets paradox org ob-go nimbus-theme names modern-cpp-font-lock mode-icons mmm-mode minimap ibuffer-projectile ibuffer-git htmlize hl-todo hl-sentence hl-indent hl-anything highlight-leading-spaces highlight-indent-guides highlight-function-calls helm-projectile helm-phpunit helm-make helm-ls-svn helm-ls-hg helm-ls-git helm-git-grep helm-git-files helm-git helm-flyspell helm-flymake helm-flycheck helm-css-scss helm-cscope helm-cmd-t helm-c-yasnippet helm-ag google-c-style go-mode format-all flymake-shell flymake-python-pyflakes flymake-phpcs flymake-php flymake-json flymake-google-cpplint flymake-go flymake-css flymake-cppcheck flycheck-package flycheck-irony flycheck-inline flycheck-golangci-lint flycheck-demjsonlint flycheck-cstyle electric-spacing electric-operator edit-indirect doom-themes dart-mode cpputils-cmake comment-tags cmake-font-lock centered-cursor-mode carbon-now-sh auto-package-update auto-indent-mode atom-one-dark-theme ac-php ac-html-bootstrap ac-html ac-c-headers))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
