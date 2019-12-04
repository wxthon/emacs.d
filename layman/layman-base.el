
;; all logics run on every platform
(defun layman/base ()
  ;; disable startup message
  (setq inhibit-startup-message t)
  (setq inhibit-splash-screen t)

  (global-auto-revert-mode t)
  ;; Disable menu bar
  (menu-bar-mode -1)
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
  (setq standard-indent 4)
  
  ;; Support share clipboard with other applications
  (setq x-select-enable-clipboard t)

  ;; Show current location
  (setq frame-title-format "emacs@%b")

  ;; Change line when show more than 80 lines
  (setq default-fill-column 80)

  ;; Set default tab intent
  (setq tab-width 4
  	indent-tabs-mode nil
	c-basic-offset 4)
  (setq python-indent-offset 4)
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
  ;;(setq track-eol t)

  ;; Delete all contents between cursor and line end
  ;;(setq-default kill-whole-line t)

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

  ;;open up with full screen
  (setq initial-frame-alist (quote ((fullscreen . maximized))))
  )

(defun layman/mac-base()
  (setenv "PATH"
	  (concat "/Library/TeX/texbin/" ":"
		  "/usr/local/miniconda2/bin" ":"
		  "/usr/local/miniconda3/bin" ":"
		  (getenv "PATH")
		  )
	  )
  (add-to-list 'exec-path "/usr/local/miniconda2/bin")
  (add-to-list 'exec-path "/usr/local/miniconda3/bin")
  )

(layman/register-hook 'common 'layman/base)
(layman/register-hook 'mac 'layman/mac-base)
