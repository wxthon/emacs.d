
(defun layman/mode-control ()
  (mapcar
   (function (lambda (setting)
			   (setq auto-mode-alist
					 (cons setting auto-mode-alist))))
   '(("\\.xml$" . sgml-mode)
	 ("\\.org\\'" . org-mode)
	 ("\\\.bash" . sh-mode)
	 ("\\.rdf$" . sgml-mode)
	 ("\\.session" . emacs-list-mode)
	 ("\\.l$" . c-mode)
	 ("\\.css$" . css-mode)
	 ("\\.cfm" . html-mode)
	 ("gnus" . emacs-lisp-mode)
	 ("\\.py$" . python-mode)
	 ("\\.rkt$" . scheme-mode)
	 ("\\.idl$" . idl-mode)))


  ;; Start auto-complete with emacs
  ;;(require 'auto-complete)
  ;;(global-auto-complete-mode)
  ;; Do default config for auto-complete
  ;;(require 'auto-complete-config)
  ;;(ac-config-default)

  ;; Start yasnippet with emacs
  ;;(require 'yasnippet)
  ;;(yas-global-mode t)

  ;; Start undo-tree.el
  ;;(require 'undo-tree)
  ;;(global-undo-tree-mode)

  ;;(require 'auto-highlight-symbol)
  ;;(global-auto-highlight-symbol-mode t)

  ;;(require 'hl-line+)
  ;;(global-hl-line-mode t)
  ;;(set-face-background 'hl-line "#004652")

  ;;(require 'auto-indent-mode)
  ;;(auto-indent-global-mode)

  ;;(require 'auto-package-update)

  ;;(when (require 'automargin nil t)
  ;;  (automargin-mode 1))

  ;;(require 'centered-cursor-mode)
  ;;(global-centered-cursor-mode 1)

  ;;(require 'autopair)
  ;;(autopair-global-mode) ;; to enable in all buffers
  ;;(add-hook 'c-mode-common-hook #'(lambda () (autopair-mode)))
  ;;(add-hook 'c-mode-common-hook
  ;;#'(lambda ()
  ;;(setq autopair-dont-activate t)
  ;;(autopair-mode -1)))

  ;;(autoload 'bash-completion-dynamic-complete \"bash-completion\"
  ;;  \"BASH completion hook\")
  ;;(add-hook 'shell-dynamic-complete-functions
  ;;'bash-completion-dynamic-complete)
  )

(layman/register-hook 'common 'layman/mode-control)
