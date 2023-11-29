

;;; Code:
(require 'layman-base)

(defun layman-init-cc ()
  "Init c++ feature."
  (use-package c++-mode
    :functions            ; suppress warnings
    c-toggle-hungry-state
    :hook
    (c-mode . lsp-deferred)
    (c++-mode . lsp-deferred)
    (c++-mode . c-toggle-hungry-state))
  )

(layman-register-hook 'common 'layman-init-cc)

(provide 'layman-cc)
;;; layman-cc.el ends here
