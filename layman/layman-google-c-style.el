;;; package --- Summary
;;; Commentary:
;;; This is my extensions

;;; Code:
(require 'layman-base)

(defun layman-init-google-c-style ()
  "Init google c style feature."
  (use-package google-c-style
    :ensure t
    :config
    (add-hook 'c-mode-common-hook 'google-set-c-style)
    (add-hook 'c-mode-common-hook 'google-make-newline-indent))
  )

(layman-register-hook 'common 'layman-init-google-c-style)

(provide 'layman-google-c-style)
;;; layman-google-c-style.el ends here
