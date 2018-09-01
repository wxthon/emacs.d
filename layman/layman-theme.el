

(defun layman/set-theme ()
  (if (display-graphic-p)
      (progn
	;;(require 'zenburn-theme)
	;;(require 'atom-one-dark-theme)
	(require 'solarized-light-theme)
	)
    (progn
      ;;(require 'zenburn-theme)
      ;;(require 'atom-one-dark-theme)
      ))
  )

(layman/register-hook 'common 'layman/set-theme)
