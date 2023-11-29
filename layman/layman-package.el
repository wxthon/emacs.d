
;;; Code:

(require 'layman-base)

;; Define a package repository initializer
(defun layman-init-package-repo ()
  "Init package repository feature."
  (require 'package)
  (setq package-archives
        '(
	  ;;("melpa-cn" . "http://elpa.emacs-china.org/melpa/")
	  ;;("org-cn"   . "http://elpa.emacs-china.org/org/")
	  ;;("gnu-cn"   . "http://elpa.emacs-china.org/gnu/")
	  ;;("marmalade"   . "http://marmalade-repo.org/packages/")
          ;;("gnu"         . "https://elpa.gnu.org/packages/")
          ;;("org"         . "https://orgmode.org/elpa/")
          ;;("melpa"       . "https://melpa.org/packages/")
          ;;("melpa-stable" . "https://stable.melpa.org/packages/")))
	  ;;("gnu-tencent"   . "http://mirrors.cloud.tencent.com/elpa/gnu/")
	  ;;("melpa-tencent" . "http://mirrors.cloud.tencent.com/elpa/melpa/")
	  ("melpa-tsinghua" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")
	  ("org-tsinghua" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/org/")
	  ("gnu-tsinghua" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")))

  (package-initialize)

  (setq package-selected-packages
	'(use-package))

  (when (cl-find-if-not #'package-installed-p package-selected-packages)
    (package-refresh-contents)
    (mapc #'package-install package-selected-packages))

  (eval-when-compile
    (require 'use-package))

  ) ;; end layman-init-package-repo

;; Init package repository for all platforms
(layman-register-hook 'common 'layman-init-package-repo)

(provide 'layman-package)
;;; layman-package.el ends here
