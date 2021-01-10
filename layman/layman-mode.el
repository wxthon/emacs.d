
(defun layman/mode-matches ()
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
  )

(defun layman/mode-global ()

  (require 'cc-mode)
  (add-to-list 'c++-font-lock-extra-types "auto")

  ;; enable auto-complete with emacs
  (require 'auto-complete)
  (global-auto-complete-mode)
  
  ;; Do default config for auto-complete
  (ac-config-default)

  ;; enable auto indent
  ;;(require 'auto-indent-mode)
  ;;(auto-indent-global-mode)

  ;; enable yasnippet with emacs
  (add-to-list 'load-path "~/path-to-yasnippet")
  
  (require 'yasnippet)
  (yas-global-mode 1)

  (require 'yasnippet-snippets)

  ;; enable undo-tree.el
  (require 'undo-tree)
  (global-undo-tree-mode)

  ;; enable auto update for all packages
  ;;(require 'auto-package-update)

  ;; enable centered cursor of buffer
  (require 'centered-cursor-mode)
  (global-centered-cursor-mode 1)

  ;; enable cmake-mode
  (require 'cmake-mode)

  (require 'hl-anything)
  (global-hl-line-mode)

  ;;(require 'hl-indent)
  ;;(hl-indent-mode)
  
  (require 'hl-todo)
  (global-hl-todo-mode)

  ;;(require 'ibuffer-projectile)
  ;;(require 'ibuffer-git)
  
  ;;(require 'projectile)
  ;;(projectile-mode)
  ;;(define-key projectile-mode-map (kbd "s-p") 'projectile-command-map)
  ;;(define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)

  ;;(require 'powerline)
  ;;(powerline-default-theme)
  ;;(require 'spaceline-config)
  ;;(spaceline-spacemacs-theme)

  ;;(require 'minimap)
  ;;(minimap-mode)

  (require 'ac-html)

  ;;(require 'py-autopep8)
  ;;(add-hook 'python-mode-hook 'py-autopep8-enable-on-save)


  ;;(autoload 'pylint "pylint")
  ;;(add-hook 'python-mode-hook 'pylint-add-menu-items)
  ;;(add-hook 'python-mode-hook 'pylint-add-key-bindings)

  ;;(require 'electric-spacing)
  ;;(add-hook 'c++-mode-hook #'modern-c++-font-lock-mode)

  
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

  ;;(require 'org)
  ;;(setq org-src-fontify-natively t)

  (require 'helm)
  (global-set-key (kbd "M-x") #'helm-M-x)
  (global-set-key (kbd "C-x r b") #'helm-filtered-bookmarks)
  (global-set-key (kbd "C-x C-f") #'helm-find-files)
  (helm-mode)

  (font-lock-add-keywords
   'c-mode
   '(("\\(\\sw+\\) ?(" 1 'font-lock-function-name-face)))
  (font-lock-add-keywords
   'c++-mode
   '(("\\(\\sw+\\) ?(" 1 'font-lock-function-name-face)))
  (font-lock-add-keywords
   'c++-mode
   '(("\\(\\sw+\\) ?=" 1 'font-lock-variable-name-face)))
  (font-lock-add-keywords
   'c++-mode
   '(("\\(\\sw+\\) ?\\." 1 'font-lock-variable-name-face)))
  (font-lock-add-keywords
   'c++-mode
   '(("\\(\\sw+\\) ?\\->" 1 'font-lock-variable-name-face)))
  (font-lock-add-keywords
   'c++-mode
   '(("\\([[:upper:]\|_]+\\) ?(" 1 'font-lock-keyword-face)))
  (font-lock-add-keywords
   'c++-mode
   '(("<\\(\\sw+\\)>" 1 'font-lock-type-face)))
  (font-lock-add-keywords
   'c++-mode
   '(("\\([&]+\\)" 1 'font-lock-keyword-face)))

  (autoload 'cpp-font-lock "cpp-font-lock")
  (add-to-list 'auto-mode-alist '("\\.h\\'" . c++-mode))
  (add-to-list 'auto-mode-alist '("\\.c\\'" . c++-mode))
  (add-to-list 'auto-mode-alist '("\\.I\\'" . c++-mode))

  (require 'modern-cpp-font-lock)
  (modern-c++-font-lock-global-mode t)

  ;; if you want to change prefix for lsp-mode keybindings.
  ;;(setq lsp-keymap-prefix "s-l")

  ;;(require 'lsp-mode)
  ;;(add-hook 'c++-mode-hook #'lsp)
  ;;(add-hook 'c-mode-hook #'lsp)
)

(defun layman/c-or-c++-custom (mode-hook)
  (require 'google-c-style)
  (add-hook mode-hook 'google-set-c-style)
  (add-hook mode-hook 'google-make-newline-indent)

  ;; enable irony mode
  ;;(add-hook 'c++-mode-hook 'irony-mode)
  ;;(add-hook 'c-mode-hook 'irony-mode)
  ;;(add-hook 'objc-mode-hook 'irony-mode)
  ;;(add-hook 'irony-mode-hook 'irony-cdb-autosetup-compile-options)
  
  (require 'ac-c-headers)
  (add-hook mode-hook
            (lambda () 
              ;; enaeble auto complete for c
              (add-to-list 'ac-sources 'ac-source-c-headers)
              (add-to-list 'ac-sources 'ac-source-c-header-symbols t)))
  ;;(add-hook 'c++-mode-hook #'modern-c++-font-lock-mode)
)

(defun layman/mode-custom ()
  (layman/c-or-c++-custom 'c-mode-hook)
  (layman/c-or-c++-custom 'c++-mode-hook)
  ;;(require 'phpcbf)
  ;;(add-hook 'php-mode-hook 'phpcbf-enable-on-save)
  )

(defun layman/mode-control ()
  (layman/mode-global)
  (layman/mode-custom))

(layman/register-hook 'common 'layman/mode-control)
