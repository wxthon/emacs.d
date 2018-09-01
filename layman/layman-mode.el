
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

  ;; enable auto-complete with emacs
  (require 'auto-complete)
  (global-auto-complete-mode)
  
  ;; enaeble auto complete for c
  (require 'auto-complete-c-headers)
  (add-to-list 'ac-sources 'ac-source-c-headers)

  ;; enable auto indent
  (require 'auto-indent-mode)
  (auto-indent-global-mode)

  ;; enable yasnippet with emacs
  (add-to-list 'load-path
               "~/path-to-yasnippet")
  (require 'yasnippet)
  (yas-global-mode 1)

  (require 'yasnippet-snippets)

  ;; enable undo-tree.el
  (require 'undo-tree)
  (global-undo-tree-mode)

  ;; enable auto update for all packages
  (require 'auto-package-update)

  ;; enable centered cursor of buffer
  (require 'centered-cursor-mode)
  (global-centered-cursor-mode 1)

  ;; enable cmake-mode
  (require 'cmake-mode)
  
  ;; Do default config for auto-complete
  ;;(require 'auto-complete-config)
  ;;(ac-config-default)

  ;;(require 'auto-highlight-symbol)
  ;;(global-auto-highlight-symbol-mode t)

  ;;(require 'hl-line+)
  ;;(global-hl-line-mode t)
  ;;(set-face-background 'hl-line "#004652")
  
  ;;(when (require 'automargin nil t)
  ;;  (automargin-mode 1))

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
