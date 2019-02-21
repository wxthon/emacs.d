

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
    (sphinx-doc sphinx-mode spacemacs-theme nimbus-theme zenburn-theme yasnippet-snippets undo-tree spaceline solarized-theme snippet pylint pydoc py-yapf py-test py-import-check py-autopep8 phpcbf php-auto-yasnippets org ob-go names modern-cpp-font-lock mode-icons minimap ibuffer-projectile ibuffer-git htmlize hl-todo hl-sentence hl-indent hl-anything highlight-leading-spaces highlight-indent-guides highlight-function-calls highlight-doxygen helm-projectile helm-phpunit helm-make helm-ls-svn helm-ls-hg helm-ls-git helm-git-grep helm-git-files helm-git helm-flyspell helm-flymake helm-flycheck helm-css-scss helm-cscope helm-cmd-t helm-c-yasnippet helm-ag google-c-style go-mode flymake-shell flymake-python-pyflakes flymake-phpcs flymake-php flymake-json flymake-google-cpplint flymake-go flymake-css flymake-cppcheck flycheck-package flycheck-irony flycheck-inline flycheck-golangci-lint flycheck-demjsonlint flycheck-cstyle electric-spacing electric-operator doom-themes cpputils-cmake comment-tags cmake-font-lock centered-cursor-mode auto-package-update auto-indent-mode atom-one-dark-theme ac-php ac-html-bootstrap ac-html ac-c-headers))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
