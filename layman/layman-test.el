
(print "Hello world from layman-test")
(add-hook 'c-mode-common-hook (lambda () (print "Hello C Hooks")))
(require 'google-c-style)
(add-hook 'c-mode-common-hook 'google-set-c-style)
(add-hook 'c-mode-common-hook 'google-make-newline-indent)

(provide 'layman-test)
