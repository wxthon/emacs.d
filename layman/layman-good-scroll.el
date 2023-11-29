
;;; Code:
(require 'layman-base)

(defun layman-init-good-scroll ()
  "Init good-scroll feature."
  (use-package good-scroll
    :ensure t
    :if window-system
    :init (good-scroll-mode)))

(layman-register-hook 'common 'layman-init-good-scroll)

(provide 'layman-good-scroll)
;;; layman-good-scroll.el ends here
