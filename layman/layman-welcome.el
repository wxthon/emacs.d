
(defun layman/welcome()
  (message "----------------------------")
  (message "Welcome to Layman-Emacs(%s)" system-type))
(layman/register-hook 'common 'layman/welcome)
