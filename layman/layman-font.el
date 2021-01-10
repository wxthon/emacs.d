

;;Menlo, Consolas, DejaVu Sans Mono, monospace, Inconsolata
(defun layman/init-font()
  (add-to-list 'initial-frame-alist '(font . "Ubuntu Mono-14"))
  (add-to-list 'default-frame-alist '(font . "Ubuntu Mono-14"))
  (setq-default line-spacing 0.3)
)

;;(setq default-frame-alist '((width . 80) (height . 55) (menu-bar-lines . 1)))

(layman/register-hook 'common 'layman/init-font)
