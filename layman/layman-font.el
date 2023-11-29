
;;; Code:

(require 'layman-base)

;; Menlo, Consolas, DejaVu Sans Mono, monospace, Inconsolata
(defun layman-init-font()
  "Init font feature."
  ;;(add-to-list 'initial-frame-alist '(font . "Ubuntu Mono-14"))
  ;;(add-to-list 'default-frame-alist '(font . "Ubuntu Mono-14"))
  ;;(add-to-list 'initial-frame-alist '(font . "Fira Code Light-12"))
  ;;(add-to-list 'default-frame-alist '(font . "Fira Code Light-12"))
  ;;(add-to-list 'initial-frame-alist '(font . "Inconsolata-12"))
  ;;(add-to-list 'default-frame-alist '(font . "Inconsolata-12"))
  ;;(add-to-list 'initial-frame-alist '(font . "Monaco-12"))
  ;;(add-to-list 'default-frame-alist '(font . "Monaco-12"))
  (if (>= display-pixels-per-inch 72)
      (progn
	(add-to-list 'initial-frame-alist '(font . "Noto Sans Mono-14"))
	(add-to-list 'default-frame-alist '(font . "Noto Sans Mono-14")))
    (progn
      (add-to-list 'initial-frame-alist '(font . "Noto Sans Mono-11"))
      (add-to-list 'default-frame-alist '(font . "Noto Sans Mono-11"))))
  ;;(add-to-list 'initial-frame-alist '(font . "Droid Sans Mono-12"))
  ;;(add-to-list 'default-frame-alist '(font . "Droid Sans Mono-12"))
  ;;(setq-default line-spacing nil)
  (setq line-spacing 0)
  ) ;; end layman-init-font

;;(setq default-frame-alist '((width . 80) (height . 55) (menu-bar-lines . 1)))

(layman-register-hook 'common 'layman-init-font)

(provide 'layman-font)
;;; layman-font.el ends here
