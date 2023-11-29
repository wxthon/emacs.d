
;;; Code:
(require 'layman-base)

(defun layman-init-avy ()
  "Init avy feature."
  (use-package avy
    :ensure t
    :config
    (defun avy-action-embark (pt)
      (unwind-protect
          (save-excursion
            (goto-char pt)
            (embark-act))
	(select-window
	 (cdr (ring-ref avy-ring 0))))
      t)
    (setf (alist-get ?e avy-dispatch-alist) 'avy-action-embark)
    ;;:bind
    ;;(("C-j C-SPC" . avy-goto-char-timer))
    ))

(layman-register-hook 'common 'layman-init-avy)

(provide 'layman-avy)
;;; layman-avy.el ends here
