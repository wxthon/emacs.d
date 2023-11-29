
;;; Code:
(require 'layman-base)

(defun layman-init-yasnippet ()
  "Init yasnippet feature."
  (use-package yasnippet
    :ensure t
    ;;:init
    ;;(yas-reload-all)
    :after (company)
    :hook
    (prog-mode . yas-minor-mode)
    :config
    ;; add company-yasnippet to company-backends
    (defun company-mode/backend-with-yas (backend)
      (if (and (listp backend) (member 'company-yasnippet backend))
	  backend
	(append (if (consp backend) backend (list backend))
		'(:with company-yasnippet))))
    (setq company-backends (mapcar #'company-mode/backend-with-yas company-backends))
    ;; unbind <TAB> completion
    (define-key yas-minor-mode-map [(tab)]        nil)
    (define-key yas-minor-mode-map (kbd "TAB")    nil)
    (define-key yas-minor-mode-map (kbd "<tab>")  nil)
    :bind
    (:map yas-minor-mode-map ("S-<tab>" . yas-expand)))

  (use-package yasnippet-snippets
    :ensure t
    :after yasnippet)

  (global-set-key (kbd "M-/") 'hippie-expand)
  );;; layman-init-yasnippet

(layman-register-hook 'common 'layman-init-yasnippet)

(provide 'layman-yasnippet)
;;; layman-yasnippet.el ends here
