

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
    (ac-php-core all-the-icons async auto-complete dash epl f flycheck flymake-easy irony memoize names package-lint php-mode phpunit pkg-info popup powerline projectile s web-completion-data xcscope yasnippet helm-core helm snippet solarized-theme ob-go htmlize auctex auctex-latexmk latex-extra latex-math-preview latex-pretty-symbols latex-preview-pane latex-unicode-math-mode latexdiff math-symbol-lists org signal spu org-link-minor-mode yasnippet-snippets undo-tree spaceline pylint pydoc py-yapf py-test py-import-check py-autopep8 phpcbf php-auto-yasnippets ibuffer-projectile ibuffer-git hl-todo hl-indent hl-anything helm-projectile helm-phpunit helm-make helm-ls-svn helm-ls-hg helm-ls-git helm-git-grep helm-git-files helm-git helm-flyspell helm-flymake helm-flycheck helm-css-scss helm-cscope helm-cmd-t helm-c-yasnippet helm-ag google-c-style go-mode flymake-shell flymake-python-pyflakes flymake-phpcs flymake-php flymake-json flymake-google-cpplint flymake-go flymake-css flymake-cppcheck flycheck-package flycheck-irony flycheck-inline flycheck-golangci-lint flycheck-demjsonlint flycheck-cstyle electric-spacing electric-operator cmake-mode centered-cursor-mode auto-package-update auto-indent-mode ac-php ac-html-bootstrap ac-html ac-c-headers))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
