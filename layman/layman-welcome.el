
;;; Code:
(require 'layman-base)

(defun layman-welcome()
  "Print the greet message."
  (layman-message "----------------------------------")
  (layman-message "Welcome to Layman-Emacs(%s)" system-type)
  ) ;; end layman-welcome
(layman-register-hook 'common 'layman-welcome)

(provide 'layman-welcome)
;;; layman-welcome.el ends here
