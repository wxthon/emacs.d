

;; set default font in initial window and for any new window
(defun layman/set-default-font()
  (when (member "Monospace" (font-family-list))
    (add-to-list 'initial-frame-alist '(font . "Monospace-14"))
    (add-to-list 'default-frame-alist '(font . "Monospace-14")))
  (when (member "Monaco" (font-family-list))
    (add-to-list 'initial-frame-alist '(font . "Monaco-14"))
    (add-to-list 'default-frame-alist '(font . "Monaco-14")))
  (setq-default line-spacing 0.15)
  )

(defun layman/init-font()
  (cond
   ((string-equal system-type "windows-nt") ; Microsoft Windows
    (when (member "DejaVu Sans Mono" (font-family-list))
      (add-to-list 'initial-frame-alist '(font . "DejaVu Sans Mono-10"))
      (add-to-list 'default-frame-alist '(font . "DejaVu Sans Mono-10"))))
   ))

(layman/register-hook 'common 'layman/set-default-font)
