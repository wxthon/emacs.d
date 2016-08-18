;; Start package.el with emacs
(require 'package)
(setq package-archives '(("gnu" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")
						 ("melpa" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")))

;; Initialize package module
(package-initialize)

;; Set color theme
(require 'color-theme)
(color-theme-initialize)


;;(if (display-graphic-p)
;;	(progn
;;        (require 'dracula-theme))
;;	(require 'sanityinc-solarized-light-theme))

;;(require 'color-theme-solarized)
;;(color-theme-solarized-dark)
(require 'molokai-theme)
(setq molokai-theme-kit t)


;; Start auto-complete with emacs
(require 'auto-complete)
;; Do default config for auto-complete
(require 'auto-complete-config)
(ac-config-default)

;; Let's define a function which initializes auto-complete-c-headers and gets called for c/c++ hooks
(defun my:ac-c-header-init()
  (require 'auto-complete-c-headers)
  (add-to-list 'ac-sources 'ac-source-c-headers)
  (add-to-list 'achead:include-directories "/usr/include")
  (add-to-list 'achead:include-directories "/usr/include/c++/5.3.1")
  (add-to-list 'achead:include-directories "/usr/include/glog")
  (add-to-list 'achead:include-directories "/usr/include/linux")
  (add-to-list 'achead:include-directories "/usr/local/include")
  (add-to-list 'achead:include-directories "/usr/local/include/boost")
  (add-to-list 'achead:include-directories "/usr/include"))
;; Now let's call this function from c/c++ hooks
(add-hook 'c++-mode-hook 'my:ac-c-header-init)
(add-hook 'c-mode-hook 'my:ac-c-header-init)

;; Start yasnippet with emacs
(require 'yasnippet)
(yas-global-mode t)

;; Start flymake-google-cpplint-load
;; Let's define a function for flymake initialization
(defun my:flymake-google-init()
  (require 'flymake-google-cpplint)
  (custom-set-variables
   '(flymake-google-cpplint-command "/usr/bin/cpplint"))
  (flymake-google-cpplint-load))
;;(add-hook 'c-mode-hook 'my:flymake-google-init)
;;(add-hook 'c++-mode-hook 'my:flymake-google-init)

;; Start google-c-style with emacs
(require 'google-c-style)
(add-hook 'c-mode-common-hook 'google-set-c-style)
(add-hook 'c-mode-common-hook 'google-make-newline-indent)

;; Start undo-tree.el
(require 'undo-tree)
(global-undo-tree-mode)

;; Disable menu bar
;;(menu-bar-mode -1)
(tool-bar-mode -1)

;; Show line number
(setq line-number-mode t)
(global-linum-mode 'linum-mode)
(setq column-number-mode t)

;; Show time
(display-time-mode t)
(setq display-time-24hr-format t)
(setq display-time-day-and-date t)

;; Use y/n instead of yes/no
(fset 'yes-or-no-p 'y-or-n-p)

;; Show matched parentheses
(show-paren-mode t)
(setq show-paren-style 'parentheses)

;; Highlight programmar
(global-font-lock-mode t)

;; Custom intent
(setq standard-indent 2)

;; Support share clipboard with other applications
(setq x-select-enable-clipboard t)

;; Show current location
(setq frame-title-format "emacs@%b")

;; Change line when show more than 80 lines
(setq default-fill-column 80)

;; Set default tab intent
(setq tab-width 4
      indent-tabs-mode t
      c-basic-offset 4)
(setq default-tab-width 4)

;; Drop temp file
(setq make-backup-files nil)
(setq auto-save-default nil)
(setq backup-inhibited t) ;; no backup

;; Scroll Without Entire page
(setq scroll-step 1
      scroll-margin 3
      scroll-conservatively 10000)

;; Keep cursor at the end of line when move upon/down
(setq track-eol t)

;; Delete all contents between cursor and line end
(setq-default kill-whole-line t)

;; Ignore ring notice
(setq ring-bell-function 'ignore)

;; Disable alert sound
(setq visible-bell nil)

;; Support show image
(auto-image-file-mode t)

;; Move cursor when above current position
(setq mouse-avoidance-mode 'animate)

;; Set default web browser
(setq browse-url-generic-program (executable-find "google-chrome")
      browse-url-browser-function 'browse-url-generic)

;; Auto insert quotes
;;(setq skeleton-pair-alist
;;      '((?\" _ "\"" >)
;;	(?\' _ "\'" >)
;;	(?\( _ ")" >)
;;	(?\[ _ "]" >)
;;	(?\{ _ "}" >)))
;;(setq skeleton-pair t)

(mapcar
 (function (lambda (setting)
			 (setq auto-mode-alist
				   (cons setting auto-mode-alist))))
 '(("\\.xml$" . sgml-mode)
   ("\\.org\\'" . org-mode)
   ("\\\.bash" . sh-mode)
   ("\\.rdf$" . sgml-mode)
   ("\\.session" . emacs-list-mode)
   ("\\.l$" . c-mode)
   ("\\.css$" . css-mode)
   ("\\.cfm" . html-mode)
   ("gnus" . emacs-lisp-mode)
   ("\\.py$" . python-mode)
   ("\\.rkt$" . scheme-mode)
   ("\\.idl$" . idl-mode)))

;;(require 'auto-highlight-symbol)
;;(global-auto-highlight-symbol-mode t)

;;(require 'hl-line+)
;;(global-hl-line-mode t)
;;(set-face-background 'hl-line "#004652")
