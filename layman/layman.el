;;Common platform running chain hooks, default nil
(defvar layman--common-hooks (list))

;;MacOS running chain hooks, default nil
(defvar layman--mac-hooks (list))

;;Linux running chain hooks, default nil
(defvar layman--linux-hooks (list))

;; provide register hook for all modules
(defun layman/register-hook (platform hook)
  "Register hook that only executed when emacs on special platform"
  (message "register hook: %s to %s" hook platform)
  (cond 
   ((eq platform 'common) (add-to-list 'layman--common-hooks hook t))
   ((eq platform 'mac) (add-to-list 'layman--mac-hooks hook t))
   ((eq platform 'linux) (add-to-list 'layman--linux-hooks hook t))
   (t nil)))

;; run all hooks of every kinds
(defun layman/run-hooks (hooks)
  (dolist (hook hooks)
    (progn
      (message "run hook: %s" hook)
      (funcall hook))))

;; layman module path
(defvar layman--module-path "~/.emacs.d/layman")

;; load layman module by name
(defun layman/load-module (m)
  (let ((name (format "LaymanModule<%s>" m)))
    (message "\n\n Layman: loading %s" name)
    (load (format "%s/layman-%s.el" layman--module-path m))))

;; load all layman modules
(defun layman/load-modules ()
  (let ((common-modules (list 'welcome 'package 'base 'keys 'font 'theme 'mode)))
    (dolist (m common-modules)
      (layman/load-module m))))

;; booting layman editor
(defun layman/booting ()
  (layman/load-modules)
  (layman/run-hooks layman--common-hooks)
  (cond 
   ((eq system-type 'darwin) (layman/run-hooks layman--mac-hooks))
   ((eq system-type 'linux) (layman/run-hooks layman--linux-hooks))))
