
;;; Code:
(require 'layman-base)

(defun layman-init-mwim ()
  "Init mwim feature."
  (use-package mwim
    :ensure t
    :bind
    ("C-a" . mwim-beginning-of-code-or-line)
    ("C-e" . mwim-end-of-code-or-line)))

(layman-register-hook 'common 'layman-init-mwim)

(provide 'layman-mwim)
;;; layman-mwim.el ends here
