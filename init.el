;; add ~/.emacs.d/lisp to load-path
(add-to-list 'load-path "~/.emacs.d/lisp")
(add-to-list 'load-path "~/.emacs.d/lisp/themes")
(add-to-list 'load-path "~/.emacs.d/lisp/replace-colorthemes")
;; start package.el with emacs
(require 'package)
;;(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
;;                         ("marmalade" . "https://marmalade-repo.org/packages/")
;;                         ("melpa" . "http://melpa.org/packages/")))
;; add MELPA to repository list
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
;; initialize package.el
(package-initialize)
;; start auto-complete with emacs
(require 'auto-complete)
;; do default config for auto-complete
(require 'auto-complete-config)
(ac-config-default)
;; start yasnippet with emacs
(require 'yasnippet)
(yas-global-mode 1)
;; let's define a function which initializes auto-complete-c-headers and gets called for c/c++ hooks
(defun my:ac-c-header-init()
  (require 'auto-complete-c-headers)
  (add-to-list 'ac-sources 'ac-source-c-headers)
  (add-to-list 'achead:include-directories "/usr/include"))
;; now let's call this function from c/c++ hooks
(add-hook 'c++-mode-hook 'my:ac-c-header-init)
(add-hook 'c-mode-hook 'my:ac-c-header-init)
;; set color theme
(require 'color-theme)
(color-theme-initialize)
(require 'color-theme-solarized)
(color-theme-solarized-dark)

;; start iedit.el
(define-key global-map (kbd "C-c '") 'iedit-mode)
;; start flymake-google-cpplint-load
;; let's define a function for flymake initialization
(defun my:flymake-google-init()
  (require 'flymake-google-cpplint)
  (custom-set-variables
   '(flymake-google-cpplint-command "/usr/bin/cpplint"))
  (flymake-google-cpplint-load))
(add-hook 'c-mode-hook 'my:flymake-google-init)
(add-hook 'c++-mode-hook 'my:flymake-google-init)

;; start google-c-style with emacs
(require 'google-c-style)
(add-hook 'c-mode-common-hook 'google-set-c-style)
(add-hook 'c-mode-common-hook 'google-make-newline-indent)

;; start undo-tree.el
(require 'undo-tree)
(global-undo-tree-mode)

;; disable menu bar
(menu-bar-mode -1)
(tool-bar-mode -1)


;;(require 'auto-highlight-symbol)
;;(global-auto-highlight-symbol-mode t)

;;(require 'hl-line+)
;;(global-hl-line-mode t)
;;(set-face-background 'hl-line "#004652")

;; cannot use on console, so disable it
;;(global-linum-mode t)
