

;;Menlo, Consolas, DejaVu Sans Mono, monospace, Inconsolata
(defun layman/init-font()
  ;;(add-to-list 'initial-frame-alist '(font . "Ubuntu Mono-14"))
  ;;(add-to-list 'default-frame-alist '(font . "Ubuntu Mono-14"))
  ;;(add-to-list 'initial-frame-alist '(font . "Fira Code Light-11"))
  ;;(add-to-list 'default-frame-alist '(font . "Fira Code Light-11"))
  (add-to-list 'initial-frame-alist '(font . "Inconsolata-11"))
  (add-to-list 'default-frame-alist '(font . "Inconsolata-11"))
  (setq-default line-spacing 0.3)
)

;;(setq default-frame-alist '((width . 80) (height . 55) (menu-bar-lines . 1)))

(layman/register-hook 'common 'layman/init-font)
