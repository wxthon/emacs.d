

(defun layman/set-theme ()
  (if (display-graphic-p)
      (progn
	;;(require 'zenburn-theme)
	(require 'atom-one-dark-theme)
        ;;(require 'solarized-light-theme)
	)
    (progn
      (require 'zenburn-theme)
      ;;(require 'atom-one-dark-theme)
      ;;(require 'solarized-light-theme)
      )
    )
)

;;(require 'doom-themes)
;;(load-theme 'doom-dracula t)
;;(load-theme 'doom-one t)
(layman/register-hook 'common 'layman/set-theme)
