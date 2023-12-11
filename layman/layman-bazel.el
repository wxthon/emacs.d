
;;; Code:
(require 'layman-base)

(defun layman-init-bazel ()
  "Init bazel feature."
  (use-package bazel
    :ensure t)
  )

(layman-register-hook 'common 'layman-init-bazel)

(provide 'layman-bazel)
;;; layman-bazel.el ends here
