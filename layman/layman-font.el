

;;Menlo, Consolas, DejaVu Sans Mono, monospace, Inconsolata
(defun layman/init-font()
  (cond
   ((string-equal system-type "windows-nt") ; Microsoft Windows
    (when (member "DejaVu Sans Mono" (font-family-list))
      (add-to-list 'initial-frame-alist '(font . "DejaVu Sans Mono-14"))
      (add-to-list 'default-frame-alist '(font . "DejaVu Sans Mono-14"))))
   ((string-equal system-type "gnu/linux") ; Linux
    (when (member "Menlo" (font-family-list))
      (add-to-list 'initial-frame-alist '(font . "Menlo-14"))
      (add-to-list 'default-frame-alist '(font . "Menlo-14")))
    (when (member "Inconsolata" (font-family-list))
      (add-to-list 'initial-frame-alist '(font . "Inconsolata-14"))
      (add-to-list 'default-frame-alist '(font . "Inconsolata-14"))))
   ((string-equal system-type "darwin") ; Linux
    (when (member "Menlo" (font-family-list))
      (add-to-list 'initial-frame-alist '(font . "Menlo-14"))
      (add-to-list 'default-frame-alist '(font . "Menlo-14")))
    (when (member "Inconsolata" (font-family-list))
      (add-to-list 'initial-frame-alist '(font . "Inconsolata-14"))
      (add-to-list 'default-frame-alist '(font . "Inconsolata-14"))))
   )
  (setq-default line-spacing 0.05)
)

;;(setq default-frame-alist '((width . 80) (height . 55) (menu-bar-lines . 1)))

(layman/register-hook 'common 'layman/init-font)
