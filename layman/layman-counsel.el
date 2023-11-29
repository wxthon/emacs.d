
;;; Code:
(require 'layman-base)

(defun layman-init-counsel ()
  "Init counsel feature."
  (use-package counsel
    :ensure t
    ))

(layman-register-hook 'common 'layman-init-counsel)

(provide 'layman-counsel)
;;; layman-counsel.el ends here
