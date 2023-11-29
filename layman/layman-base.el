
;;; Code:

;; Define a rich and colorful message printing function
(defun layman-message (format &rest args)
  "FORMAT the ARGS and print in the *Messages* buffer."
  (let ((message-log-max nil))
    (apply 'message format args))
  (with-current-buffer (get-buffer "*Messages*")
    (save-excursion
      (goto-char (point-max))
      (let ((inhibit-read-only t))
        (unless (zerop (current-column)) (insert "\n"))
	(insert
	 (propertize "[Layman] " 'font-lock-face '(:foreground "magenta")))
	(insert
	 (propertize
	  (apply 'format format args) 'font-lock-face '(:foreground "cyan")))
        (insert "\n")))))

;; Define a hook chain list for all platforms
(defvar layman--common-hooks (list))

;; Define a hook chain list only for the MacOS platform
(defvar layman--mac-hooks (list))

;; Define a hook chain list only for the Linux platform
(defvar layman--linux-hooks (list))

;; Register a hook for the specified platform
(defun layman-register-hook (platform hook)
  "Register a HOOK for the specified PLATFORM."
  (layman-message "Register hook <%s> to %s chain" hook platform)
  (cond
   ((eq platform 'common) (add-to-list 'layman--common-hooks hook t))
   ((eq platform 'mac) (add-to-list 'layman--mac-hooks hook t))
   ((eq platform 'linux) (add-to-list 'layman--linux-hooks hook t))
   (t nil))
  ) ;; end layman-register-hook

(defun layman-run-hooks (hooks)
  "Run each hook in the HOOKS."
  (dolist (hook hooks)
    (progn
      (layman-message "Run hook <%s> ..." hook)
      (funcall hook)))
  ) ;; end layman-run-hooks

(defun layman-hello-world ()
  "Enter the layman's world."
  (layman-message "OS Platform: %s" system-type)
  (layman-run-hooks layman--common-hooks)
  (cond
   ((eq system-type 'darwin) (layman-run-hooks layman--mac-hooks))
   ((eq system-type 'linux) (layman-run-hooks layman--linux-hooks))
   ((eq system-type 'gnu/linux) (layman-run-hooks layman--linux-hooks)))
  ) ;; end layman-init

(provide 'layman-base)
;;; layman-base.el ends here
