

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
;(package-initialize)

(if (eq system-type 'darwin)
	(progn
	  (setq default-directory "/Volumes/Data/repositories")
      ;; key bindings
      (setq mac-option-modifier 'alt)
      (setq mac-command-modifier 'meta)
      (global-set-key [kp-delete] 'delete-char))
  (setq default-directory "/path/my_repositories"))

(defun init-base()
  ;; Add ~/.emacs.d/modules to load-path
  (add-to-list 'load-path "~/.emacs.d/modules")
  ;;(add-to-list 'load-path "~/.emacs.d/github")
  
  ;; disable startup message
  (setq inhibit-startup-message t)
  (setq inhibit-splash-screen t)
  )

(defun load-module (m)
  (setq name (format "module-%s" m))
  (message "\n\n Loading module[%s]" name)
  (load name))

(defun load-modules()
  (load-module "base")
  (load-module "key")
  (load-module "cpp")
  (load-module "switch-window"))

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


(setq-default line-spacing 0.15)
;;(require 'minimap)

;; set default font in initial window and for any new window
(cond
 ((string-equal system-type "windows-nt") ; Microsoft Windows
  (when (member "DejaVu Sans Mono" (font-family-list))
    (add-to-list 'initial-frame-alist '(font . "DejaVu Sans Mono-10"))
    (add-to-list 'default-frame-alist '(font . "DejaVu Sans Mono-10"))))
 ((string-equal system-type "darwin") ; macOS
  (when (member "Monaco" (font-family-list))
    (add-to-list 'initial-frame-alist '(font . "Monaco-14"))
    (add-to-list 'default-frame-alist '(font . "Monaco-14"))))
 ((string-equal system-type "gnu/linux") ; linux
  (when (member "Monaco" (font-family-list))
    (add-to-list 'initial-frame-alist '(font . "Monaco-14"))
    (add-to-list 'default-frame-alist '(font . "Monaco-14")))))
