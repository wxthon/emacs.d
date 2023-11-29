
(use-package python
  :defer t
  :mode ("\\.py\\'" . python-mode)
  :interpreter ("python3" . python-mode)
  :config
  ;; for debug
  (require 'dap-python))

(use-package pyvenv
  :ensure t
  :config
  (setenv "WORKON_HOME" "~/miniconda3/envs")
  (setq python-shell-interpreter "python3")
  (pyvenv-mode t))

(use-package lsp-pyright
  :ensure t
  :config
  :hook
  (python-mode . (lambda ()
          (require 'lsp-pyright)
          (lsp-deferred))))

(provide 'layman-python)
