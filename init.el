

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
 '(ansi-color-names-vector
   ["#21252B" "#E06C75" "#98C379" "#E5C07B" "#61AFEF" "#C678DD" "#56B6C2" "#ABB2BF"])
 '(custom-safe-themes
   (quote
    ("9e39a8334e0e476157bfdb8e42e1cea43fad02c9ec7c0dbd5498cf02b9adeaf1" "0598c6a29e13e7112cfbc2f523e31927ab7dce56ebb2016b567e1eff6dc1fd4f" "6b2636879127bf6124ce541b1b2824800afc49c6ccd65439d6eb987dbf200c36" "bf5bdab33a008333648512df0d2b9d9710bdfba12f6a768c7d2c438e1092b633" "10461a3c8ca61c52dfbbdedd974319b7f7fd720b091996481c8fb1dded6c6116" "d91ef4e714f05fff2070da7ca452980999f5361209e679ee988e3c432df24347" default)))
 '(fci-rule-color "#3E4451")
 '(package-selected-packages
   (quote
    (ccls ac-c-headers ac-html ac-html-bootstrap ac-php ac-php-core async atom-one-dark-theme auto-complete auto-indent-mode auto-package-update bazel-mode carbon-now-sh centered-cursor-mode cmake-font-lock cmake-mode dart-mode dash dash-functional dockerfile-mode doom-themes edit-indirect electric-operator electric-spacing epl f flycheck flycheck-cstyle flycheck-demjsonlint flycheck-golangci-lint flycheck-inline flycheck-irony flycheck-package flymake-cppcheck flymake-css flymake-easy flymake-go flymake-google-cpplint flymake-json flymake-php flymake-phpcs flymake-python-pyflakes flymake-shell format-all go-mode google-c-style helm helm-ag helm-c-yasnippet helm-cmd-t helm-core helm-cscope helm-css-scss helm-flycheck helm-flymake helm-flyspell helm-git helm-git-files helm-git-grep helm-ls-git helm-ls-hg helm-ls-svn helm-make helm-phpunit helm-projectile highlight-indent-guides hl-anything hl-indent hl-todo ht htmlize hydra ibuffer-git ibuffer-projectile irony lsp-mode lsp-ui lv markdown-mode minimap mode-icons modern-cpp-font-lock nimbus-theme ob-go org package-lint paradox php-mode phpcbf phpunit pkg-info popup powerline projectile protobuf-mode pydoc pylint restart-emacs s solarized-theme spaceline spacemacs-theme spinner ssass-mode undo-tree web-completion-data xcscope yasnippet yasnippet-snippets zenburn-theme package+ package-utils vue-html-mode sphinx-mode sphinx-doc snippet py-yapf py-test py-import-check py-autopep8 php-auto-yasnippets names mmm-mode hl-sentence highlight-leading-spaces highlight-function-calls cpputils-cmake comment-tags)))
 '(tetris-x-colors
   [[229 192 123]
    [97 175 239]
    [209 154 102]
    [224 108 117]
    [152 195 121]
    [198 120 221]
    [86 182 194]]))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
