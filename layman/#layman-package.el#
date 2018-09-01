

(defun layman/package-initialize ()
  ;; Start package.el with emacs
  (require 'package)
  (setq package-archives '(("gnu" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")
						   ("melpa" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")))

  ;; Initialize package module
  (package-initialize)
  )

(layman/register-hook 'common 'layman/package-initialize)
