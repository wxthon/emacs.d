
;;; Code:
(require 'layman-base)

(defun layman-init-protobuf ()
  "Init protobuf feature."
  (use-package protobuf-mode
    :ensure t
    )
  )

(layman-register-hook 'common 'layman-init-protobuf)

(provide 'layman-protobuf)
;;; layman-protobuf.el ends here
