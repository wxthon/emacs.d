

(defun layman/set-theme ()
  (require 'solarized-theme)
  (if (display-graphic-p)
      (progn
	(load-theme 'solarized-light t))
    (progn
      (load-theme 'solarized-light t)
      )
    )
)
(layman/register-hook 'common 'layman/set-theme)
