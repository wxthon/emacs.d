
;;; Code:
(require 'layman-base)

;; all logics run on every platform
(defun layman-init-common ()
  "Init common feature."
  ;; disable startup message
  (setq inhibit-startup-message t)
  (setq inhibit-splash-screen t)

  ;; Enable global revert mode
  (global-auto-revert-mode t)

  ;; Disable menu bar
  (menu-bar-mode -1)
  (tool-bar-mode -1)

  ;; Show line number
  (setq line-number-mode t)
  (setq column-number-mode t)
  (global-display-fill-column-indicator-mode)
  (global-display-line-numbers-mode)

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
  (setq standard-indent 4)
  
  ;; Support share clipboard with other applications
  (setq x-select-enable-clipboard t)

  ;; Show current location
  (setq frame-title-format "layman@%b")

  ;; Change line when show more than 80 lines
  (setq-default fill-column 80)
  (setq-default auto-fill-function 'do-auto-fill)
  
  ;; Set default tab intent
  ;;(setq tab-width 4
  ;;	indent-tabs-mode nil
  ;;  c-basic-offset 2)
  ;;(setq python-indent-offset 4)
  ;;(setq default-tab-width 4)

  ;; Drop temp file and disable backup
  (setq make-backup-files nil)
  (setq auto-save-default nil)
  (setq backup-inhibited t) ;; no backup
  
  ;; Scroll without entire page
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

  ;;open up with full screen
  (setq initial-frame-alist (quote ((fullscreen . maximized))))

  (setq warning-suppress-log-types '((comp) (comp)))
  (setq warning-suppress-types '((comp)))

  ) ;; end layman-common-init

(defun layman-init-mac-common ()
  "Init mac common feature."
  (setenv "PATH"
	  (concat "/Library/TeX/texbin/" ":"
		  "/usr/local/miniconda2/bin" ":"
		  "/usr/local/miniconda3/bin" ":"
		  (getenv "PATH")))
  (add-to-list 'exec-path "/usr/local/miniconda2/bin")
  (add-to-list 'exec-path "/usr/local/miniconda3/bin")

  ) ;; end layman-init-mac-common

(defun layman-init-linux-common ()
  "Init linux common feature."
  (layman-message "set linux environment")
  (setenv "PATH"
	  (concat "/home/wxthon/anaconda3/bin" ":"
		  "/home/wxthon/miniconda3/bin" ":"
		  "/home/wxthon/go/bin" ":"
		  (getenv "PATH")))
  (add-to-list 'exec-path "/home/wxthon/miniconda3/bin")
  (add-to-list 'exec-path "/home/wxthon/anaconda3/bin")
  (add-to-list 'exec-path "/home/wxthon/go/bin")

  ) ;; end layman-init-linux-common

(layman-register-hook 'common 'layman-init-common)
(layman-register-hook 'mac 'layman-init-mac-common)
(layman-register-hook 'linux 'layman-init-linux-common)

(provide 'layman-common)
;;; layman-common.el ends here
