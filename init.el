;; check emacs version
(if (version< emacs-version "24.4")
    (message "is before 24.4")
  (message "is 24.4 or after"))

;; disable startup message
(setq inhibit-startup-message t)
(setq inhibit-splash-screen t)

;; Add ~/.emacs.d/lisp to load-path
(add-to-list 'load-path "~/.emacs.d/cool")
(add-to-list 'load-path "~/.emacs.d/init")
(add-to-list 'load-path "~/.emacs.d/github")

(setq default-directory "/path/repositories")

(defun set-newline-and-indent ()
  (local-set-key (kbd "RET") 'newline-and-indent))
(add-hook 'c-mode 'set-newline-and-indent)

(electric-indent-mode)

(load "init-base")
(load "init-key")
(load "init-xcscope")
(load "init-switch-window")
;;(load "init-ctags")
;;(load "init-ggtags")

;; It's best
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(column-number-mode t)
 '(display-time-mode t)
 '(show-paren-mode t)
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Monaco" :foundry "APPL" :slant normal :weight normal :height 120 :width normal)))))
