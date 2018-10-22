

(defun layman/package-initialize ()
  ;; Start package.el with emacs
  (require 'package)
  ;; Initialize package module
  ;;(setq package-archives '(("gnu" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")
			   ;;("melpa" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")))

  (setq package-archives
	'(("melpa-cn" . "http://elpa.emacs-china.org/melpa/")
	  ("org-cn"   . "http://elpa.emacs-china.org/org/")
	  ("gnu-cn"   . "http://elpa.emacs-china.org/gnu/")))
  ;;(setq package-archives
  ;;      '(("marmalade"   . "http://marmalade-repo.org/packages/")
  ;;        ("gnu"         . "http://elpa.gnu.org/packages/")
  ;;        ("org"         . "http://orgmode.org/elpa/")
  ;;        ("melpa"       . "https://melpa.org/packages/")
  ;;        ("melpa-stable" . "https://stable.melpa.org/packages/")))
  (package-initialize)
  ;;(require 'signal)
  ;;(require 'auto-package-update)
  )


(layman/register-hook 'common 'layman/package-initialize)
