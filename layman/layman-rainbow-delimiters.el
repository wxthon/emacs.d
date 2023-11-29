
;;; Code:
(require 'layman-base)

(defun layman-init-rainbow-delimiters ()
  "Init rainbow delimiters feature."
  (use-package rainbow-delimiters
    :ensure t
    :hook (prog-mode . rainbow-delimiters-mode)))

(layman-register-hook 'common 'layman-init-rainbow-delimiters)

(provide 'layman-rainbow-delimiters)
;;; layman-rainbow-delimiters.el ends here
