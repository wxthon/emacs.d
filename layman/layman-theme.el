
;;; Code:

(require 'layman-base)

;; Define a theme initializer
(defun layman-init-theme ()
  "Init theme."
  (if (display-graphic-p)
      (progn
	;;(require 'zenburn-theme)
	;;(require 'solarized-theme)
	;;(require 'atom-one-dark-theme)
	;;(require 'solarized-light-theme)
	;;(require 'solarized-dark-theme)
	;;(require 'solarized-selenized-dark-theme)
	;;(load-theme 'sanityinc-solarized-dark t)
	;;(require 'doom-molokai-theme)
	;;(load "~/.emacs.d/elpa/darkplus-emacs/darkplus-theme.el")
	;;(load "~/.emacs.d/layman/vscode-dark-plus-theme.el")
	;;(load-theme 'vscode-dark-plus t)
	;;(load-theme 'zeno t)
	(use-package solarized-theme
          :ensure t
          :config
          (require 'solarized-dark-theme))
	)
    (progn
      ;;(require 'zenburn-theme)
      ;;(require 'atom-one-dark-theme)
      ;;(require 'solarized-light-theme)
      ;;(require 'solarized-dark-theme)
      ;;(use-package solarized-zenburn-theme
      ;;  :ensure t
      ;;  :config
      ;;  (require 'solarized-zenburn-theme))
      ;;(use-package solarized-theme
      ;;  :ensure t
      ;;  :config
      ;;  (require 'solarized-dark-theme))
      ;;(load-theme 'sanityinc-solarized-dark t)
      ;;(load "~/.emacs.d/layman/vscode-dark-plus-theme.el")
      (require 'vscode-dark-plus-theme)
      (load-theme 'vscode-dark-plus t)
      ;;(load-theme 'zeno t)
      ;;(require 'doom-molokai-theme)
      ;;(load "~/.emacs.d/elpa/darkplus-emacs/darkplus-theme.el")
      ))
  ) ;; end layman-init-theme

(layman-register-hook 'common 'layman-init-theme)

(provide 'layman-theme)
;;; layman-theme.el ends here
