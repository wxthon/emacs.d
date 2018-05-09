

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
;(package-initialize)

(if (eq system-type 'darwin)
	(setq default-directory "/Volumes/Data/repositories")
  (setq default-directory "/path/repositories")
  )

;; key bindings
(when (eq system-type 'darwin) ;; mac specific settings
  (setq mac-option-modifier 'alt)
  (setq mac-command-modifier 'meta)
  (global-set-key [kp-delete] 'delete-char) ;; sets fn-delete to be right-delete

(defun init-base()
  ;; Add ~/.emacs.d/modules to load-path
  (add-to-list 'load-path "~/.emacs.d/modules")
  ;;(add-to-list 'load-path "~/.emacs.d/github")
  
  ;; disable startup message
  (setq inhibit-startup-message t)
  (setq inhibit-splash-screen t)
  )

(defun load-module (m)
  (defvar name (format "module-%s" m))
  (message name)
  (load name))

(defun load-modules()
  (load-module "base")
  (load-module "cpp"))

(defun ui-init ()
  (message "emacs run with GUI mode")
  ;; do something
  )

(defun console-init()
  (message "emacs run with console mode")
  ;; do something
  )

(defun common-init()
  (init-base)
  (load-modules))

;;(setq default-directory "/path/repositories")

;; c-mode hooks
(defun set-newline-and-indent ()
  (local-set-key (kbd "RET") 'newline-and-indent))
(add-hook 'c-mode 'set-newline-and-indent)


;;(electric-indent-mode)
;;(global-auto-revert-mode t)


;;(load-module "key")
;;(load-module "xcscope")
;;(load-module "switch-window")
;;(load-module "ctags")
;;(load "init-ggtags")

;; init common
(common-init)

;; init ui or console
(if (display-graphic-p)
    (ui-init)
  (console-init))


;;(if (version< emacs-version "24.4")
;;    (message "is before 24.4")
;;  (message "is 24.4 or after"))
