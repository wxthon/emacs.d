
;;; Code:

;;boot into the layman's world
(add-to-list 'load-path (expand-file-name "layman" user-emacs-directory))
(require 'layman)


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(lsp-clients-clangd-args '("--header-insertion-decorators=0"
			     "--enable-config"))
 )
;;; init.el ends here
