(require 'xcscope)
;; check OS type
(cond
 ((string-equal system-type "windows-nt") ; Microsoft Windows
  (progn
    ;;(message "Microsoft Windows")
	;;(setq cscope-program "/usr/bin/cscope")
	))
 ((string-equal system-type "darwin") ; Mac OS X
  (progn
    ;;(message "Mac OS X")
	(setq cscope-program "/usr/local/bin/cscope")
	))
 ((string-equal system-type "gnu/linux") ; linux
  (progn
    ;;(message "Linux")
	(setq cscope-program "/usr/bin/cscope")
	)))
(setq cscope-do-not-update-database t)
(cscope-setup)
