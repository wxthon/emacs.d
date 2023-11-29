
;;; Code:
(require 'layman-base)

(defun layman-init-which-key ()
  "Init which key feature."
  (use-package which-key
    :ensure t
    :init (which-key-mode)))

(layman-register-hook 'common 'layman-init-which-key)

(provide 'layman-which-key)
;;; layman-which-key.el ends here
