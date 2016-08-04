(server-start)
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

(load "init-base")
(load "init-key")
(load "init-xcscope")
(load "init-switch-window")
;;(load "init-ctags")
;;(load "init-ggtags")
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (sanityinc-solarized-light)))
 '(custom-safe-themes
   (quote
	("4cf3221feff536e2b3385209e9b9dc4c2e0818a69a1cdb4b522756bcdf4e00a4" default))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
