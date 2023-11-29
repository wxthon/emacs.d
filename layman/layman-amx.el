
;;; Code:
(require 'layman-base)

(defun layman-init-amx ()
  "Init amx feature."
  (use-package amx
    :ensure t
    :init (amx-mode)))

(layman-register-hook 'common 'layman-init-amx)

(provide 'layman-amx)
;;; layman-amx.el ends here
