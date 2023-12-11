
;;; Code:
(require 'layman-base)

(defun layman-init-python ()
  "Init python feature."
  (use-package python
    :defer t
    :mode ("\\.py\\'" . python-mode)
    :interpreter ("python3" . python-mode)
    :config
    ;; for debug
    ;;(require 'dap-python)
    )

  (use-package pyvenv
    :ensure t
    :config
    (setenv "WORKON_HOME" "~/anaconda3/envs")
    (setq python-shell-interpreter "python3")
    (pyvenv-mode t))

  (use-package lsp-pyright
    :ensure t
    :config
    :hook
    (python-mode . (lambda ()
		     (require 'lsp-pyright)
		     (lsp-deferred))))
  )

(layman-register-hook 'common 'layman-init-python)

(provide 'layman-python)
;;; layman-python.el ends here
