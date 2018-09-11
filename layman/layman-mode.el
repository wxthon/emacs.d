
(defun layman/mode-global ()
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
	 ("\\.idl$" . idl-mode)
	 ("\\.go$" . go-mode)))

  ;; enable auto-complete with emacs
  (require 'auto-complete)
  (global-auto-complete-mode)
  
  ;; Do default config for auto-complete
  (ac-config-default)

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

  (require 'hl-anything)
  (global-hl-line-mode)

  (require 'hl-indent)
  (hl-indent-mode)
  
  (require 'hl-todo)
  (global-hl-todo-mode)

  (require 'ibuffer-projectile)
  (require 'ibuffer-git)
  
  (require 'projectile)
  (projectile-mode +1)
  (define-key projectile-mode-map (kbd "s-p") 'projectile-command-map)
  (define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)

  (require 'powerline)
  ;;(powerline-default-theme)
  (require 'spaceline-config)
  (spaceline-spacemacs-theme)

  (if (display-graphic-p)
	  (progn
		(require 'mode-icons)
		(mode-icons-mode)
		))

  ;;(require 'minimap)
  ;;(minimap-mode)

  (require 'ac-html)

  (require 'py-autopep8)
  (add-hook 'python-mode-hook 'py-autopep8-enable-on-save)


  (autoload 'pylint "pylint")
  (add-hook 'python-mode-hook 'pylint-add-menu-items)
  (add-hook 'python-mode-hook 'pylint-add-key-bindings)

  
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

(defun layman/c-or-c++-custom (mode-hook)
  (require 'google-c-style)
  (add-hook mode-hook 'google-set-c-style)
  (add-hook mode-hook 'google-make-newline-indent)

  ;; enable irony mode
  (add-hook 'c++-mode-hook 'irony-mode)
  (add-hook 'c-mode-hook 'irony-mode)
  (add-hook 'objc-mode-hook 'irony-mode)
  (add-hook 'irony-mode-hook 'irony-cdb-autosetup-compile-options)
  
  (require 'ac-c-headers)
  (add-hook mode-hook
            (lambda () 
              ;; enaeble auto complete for c
              (add-to-list 'ac-sources 'ac-source-c-headers)
              (add-to-list 'ac-sources 'ac-source-c-header-symbols t)))
)

(defun layman/mode-custom ()
  (layman/c-or-c++-custom 'c-mode-hook)
  (layman/c-or-c++-custom 'c++-mode-hook)
  )

(defun layman/mode-control ()
  (layman/mode-global)
  (layman/mode-custom))

(layman/register-hook 'common 'layman/mode-control)
