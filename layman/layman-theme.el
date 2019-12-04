

(defun layman/set-theme ()
  
  (if (display-graphic-p)
      (progn
	;;(require 'zenburn-theme)
;;	(require 'solarized-theme)
	;;(require 'atom-one-dark-theme)
        ;;(require 'solarized-light-theme)
	(require 'solarized-dark-theme)
	;;(require 'doom-molokai-theme)
	)
    (progn
      ;;(require 'zenburn-theme)
      ;;(require 'atom-one-dark-theme)
      ;;(require 'solarized-light-theme)
      (require 'solarized-dark-theme)
      ;;(require 'doom-molokai-theme)
    ))
)
(layman/register-hook 'common 'layman/set-theme)
