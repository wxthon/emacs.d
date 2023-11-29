

;;; Code:
(require 'layman-base)

(defun layman-init-lsp ()
  "Init lsp feature."
  (use-package lsp-mode
    :ensure t
    :init
    ;; set prefix for lsp-command-keymap (few alternatives - "C-l", "C-c l")
    (setq lsp-keymap-prefix "C-c l"
	  lsp-file-watch-threshold 500)
    :hook
    (lsp-mode . lsp-enable-which-key-integration) ; which-key integration
    :commands (lsp lsp-deferred)
    :config
    (setq lsp-completion-provider :none) ;; 阻止 lsp 重新设置 company-backend 而覆盖我们 yasnippet 的设置
    (setq lsp-headerline-breadcrumb-enable t))

  (use-package lsp-ui
    :ensure t
    :config
    (define-key lsp-ui-mode-map [remap xref-find-definitions] #'lsp-ui-peek-find-definitions)
    (define-key lsp-ui-mode-map [remap xref-find-references] #'lsp-ui-peek-find-references)
    (setq lsp-ui-doc-position 'top))

  (use-package lsp-ivy
    :ensure t
    :after (ivy lsp-mode))
  ) ;;; layman-init-lsp

(layman-register-hook 'common 'layman-init-lsp)

(provide 'layman-lsp)
;;; layman-lsp.el ends here
