
;;; Code:
(require 'layman-base)

(defun layman-init-ace ()
  "Init ace feature."
  (use-package ace-window
    :ensure t
    :bind (("C-x o" . 'ace-window))))

(layman-register-hook 'common 'layman-init-ace)

(provide 'layman-ace)
;;; layman-ace.el ends here
