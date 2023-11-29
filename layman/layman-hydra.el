
;;; Code:
(require 'layman-base)

(defun layman-init-hydra ()
  "Init hydra feature."
  (use-package hydra
    :ensure t)

  (use-package use-package-hydra
    :ensure t
    :after hydra))

(layman-register-hook 'common 'layman-init-hydra)

(provide 'layman-hydra)
;;; layman-hydra.el ends here
