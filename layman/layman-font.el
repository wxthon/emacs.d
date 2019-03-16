

;;Menlo, Consolas, DejaVu Sans Mono, monospace, Inconsolata
(defun layman/init-font()
  (when (member "Consolas" (font-family-list))
    (add-to-list 'initial-frame-alist '(font . "Consolas-14"))
    (add-to-list 'default-frame-alist '(font . "Consolas-14")))
  (when (member "Menlo" (font-family-list))
    (add-to-list 'initial-frame-alist '(font . "Menlo-14"))
    (add-to-list 'default-frame-alist '(font . "Menlo-14")))
  (when (member "Inconsolata" (font-family-list))
    (add-to-list 'initial-frame-alist '(font . "Inconsolata-14"))
    (add-to-list 'default-frame-alist '(font . "Inconsolata-14")))
  (setq-default line-spacing 0.05)
)

;;(setq default-frame-alist '((width . 80) (height . 55) (menu-bar-lines . 1)))

(layman/register-hook 'common 'layman/init-font)
