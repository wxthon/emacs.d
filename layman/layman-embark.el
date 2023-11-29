
;;; Code:
(require 'layman-base)

(defun layman-init-embark ()
  "Init embark feature."
  (use-package embark
    :ensure t
    :init
    ;; Optionally replace the key help with a completing-read interface
    (setq prefix-help-command #'embark-prefix-help-command)
    :config
    ;; Hide the mode line of the Embark live/completions buffers
    (add-to-list 'display-buffer-alist
		 '("\\`\\*Embark Collect \\(Live\\|Completions\\)\\*"
                   nil
                   (window-parameters (mode-line-format . none))))
    :bind
    (("C-." . embark-act)         ;; pick some comfortable binding
     ("C-;" . embark-dwim)        ;; good alternative: M-.
     ("C-h B" . embark-bindings)))) ;; alternative for `describe-bindings'

(layman-register-hook 'common 'layman-init-embark)

(provide 'layman-embark)
;;; layman-embark.el ends here
