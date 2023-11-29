
;;; Code:
(require 'layman-base)

(defun layman-init-flycheck ()
  "Init flycheck feature."
  (use-package flycheck
    :ensure t
    :init
    (add-hook 'after-init-hook 'global-flycheck-mode)
    ;;(global-flycheck-mode)
    :hook
    (prog-mode . flycheck-mode)))

(layman-register-hook 'common 'layman-init-flycheck)

(provide 'layman-flycheck)
;;; layman-flycheck.el ends here
