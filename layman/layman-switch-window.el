
;;; Code:
(require 'layman-base)

(defun layman-init-switch-window ()
  "Init switch window feature."
  (use-package switch-window
    :ensure t
    :config
    (global-set-key (kbd "C-x o") 'switch-window)))

(layman-register-hook 'common 'layman-init-switch-window)

(provide 'layman-switch-window)
;;; layman-switch-window.el ends here
