
(defun layman-find-mode-matches ()
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
  ) ;; end layman-find-mode-matches

(defun layman-setup-global-mode ()
  (c-set-offset 'substatement-open 0)
  (setq-default indent-tabs-mode nil)
  ;;(setq indent-tabs-mode nil
  ;;js-indent-level 2)
  ;; enable auto-complete with emacs
  (require 'auto-complete)
  ;; Do default config for auto-complete
  (ac-config-default)
  (global-auto-complete-mode)

  ;; enable yasnippet with emacs
  ;;(require 'yasnippet)
  ;;(yas-global-mode 1)

  ;;(require 'yasnippet-snippets)
  ;;(add-to-list 'load-path "~/.emacs.d/snippets")

  ;;(require 'undo-tree)
  ;;(set 'undo-tree-auto-save-history nil)
  ;;(global-undo-tree-mode 1)

  ;; enable auto update for all packages
  ;;(require 'auto-package-update)

  ;; enable centered cursor of buffer
  (require 'centered-cursor-mode)
  (global-centered-cursor-mode 1)

  ;; enable cmake-mode
  (require 'cmake-mode)

  ;; enable hl
  (require 'hl-anything)
  (global-hl-line-mode)

  (require 'hl-indent)
  (hl-indent-mode)
  
  (require 'hl-todo)
  (global-hl-todo-mode)

  ;;(require 'use-package)

  ;; sample `helm' configuration use https://github.com/emacs-helm/helm/ for details
  (helm-mode)
  (require 'helm-xref)
  (define-key global-map [remap find-file] #'helm-find-files)
  (define-key global-map [remap execute-extended-command] #'helm-M-x)
  (define-key global-map [remap switch-to-buffer] #'helm-mini)

  (require 'cc-mode)

  ;;(require 'eglot)
  ;;(add-to-list 'eglot-server-programs '((c++-mode c-mode) "clangd" "--clang-tidy"))
  ;;(add-hook 'c-mode-hook 'eglot-ensure)
  ;;(add-hook 'c++-mode-hook 'eglot-ensure)

  ;;(require 'company)
  ;;(add-hook 'after-init-hook 'global-company-mode)
  ;;(setq company-backends (delete 'company-semantic company-backends))
  ;;(define-key c-mode-map  [(tab)] 'company-complete)
  ;;(define-key c++-mode-map  [(tab)] 'company-complete)

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

  ;;(defconst my-protobuf-style
  ;;  '((c-basic-offset . 2)
  ;;    (indent-tabs-mode . nil)))
  ;;(add-hook 'protobuf-mode-hook
  ;;          (lambda () (c-add-style "my-style" my-protobuf-style t)))
  ;;(require 'protobuf-mode)

  (require 'py-autopep8)
  (add-hook 'python-mode-hook 'py-autopep8-enable-on-save)

  (autoload 'pylint "pylint")
  (add-hook 'python-mode-hook 'pylint-add-menu-items)
  (add-hook 'python-mode-hook 'pylint-add-key-bindings)

  ;;(require 'electric-spacing)

  ;; auto highlight
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

  ;; enable helm
  (require 'helm)
  (global-set-key (kbd "M-x") #'helm-M-x)
  (global-set-key (kbd "C-x r b") #'helm-filtered-bookmarks)
  (global-set-key (kbd "C-x C-f") #'helm-find-files)
  (helm-mode)

  ;; if you want to change prefix for lsp-mode keybindings.
  ;;(setq lsp-keymap-prefix "s-l")

  ;;;;; lsp mode setup
  ;;(setq package-selected-packages '(lsp-mode yasnippet lsp-treemacs helm-lsp
  ;;  				     projectile hydra flycheck company avy which-key helm-xref dap-mode))

  ;;(when (cl-find-if-not #'package-installed-p package-selected-packages)
  ;;  (package-refresh-contents)
  ;;  (mapc #'package-install package-selected-packages))

  ;;;; sample `helm' configuration use https://github.com/emacs-helm/helm/ for details
  ;;(helm-mode)
  ;;(require 'helm-xref)
  ;;(define-key global-map [remap find-file] #'helm-find-files)
  ;;(define-key global-map [remap execute-extended-command] #'helm-M-x)
  ;;(define-key global-map [remap switch-to-buffer] #'helm-mini)

  ;;(which-key-mode)
  ;;(add-hook 'c-mode-hook 'lsp)
  ;;(add-hook 'c++-mode-hook 'lsp)

  ;;(setq gc-cons-threshold (* 100 1024 1024)
  ;;  read-process-output-max (* 1024 1024)
  ;;  treemacs-space-between-root-nodes nil
  ;;  company-idle-delay 0.0
  ;;  company-minimum-prefix-length 1
  ;;  lsp-idle-delay 0.1)  ;; clangd is fast

  ;;(with-eval-after-load 'lsp-mode
  ;;  (add-hook 'lsp-mode-hook #'lsp-enable-which-key-integration)
  ;;  (require 'dap-cpptools)
  ;;  (yas-global-mode))

  ;;(eval-after-load 'flycheck
  ;;  '(progn
  ;;     (require 'flycheck-google-cpplint)
  ;;     ;; Add Google C++ Style checker.
  ;;     ;; In default, syntax checked by Clang and Cppcheck.
  ;;     (flycheck-add-next-checker 'c/c++-clang
  ;;                  '(warning . c/c++-googlelint))))
  ;;(custom-set-variables
  ;; '(flycheck-googlelint-verbose "3")
  ;; '(flycheck-googlelint-filter "-whitespace,+whitespace/braces")
  ;; '(flycheck-googlelint-root "project/src")
  ;; '(flycheck-googlelint-linelength "120"))

  ;; if you want to change prefix for lsp-mode keybindings.
  (setq lsp-keymap-prefix "s-l")

  (require 'lsp-mode)
  (add-hook 'c++-mode-hook #'lsp)
  (add-hook 'go-mode-hook #'lsp)
  
  )  ;; end layman-setup-global-mode

(defun layman-register-cc-custom-hook (mode-hook)
  (require 'google-c-style)
  (add-hook mode-hook 'google-set-c-style)
  (add-hook mode-hook 'google-make-newline-indent)

  ;; enable irony mode
  ;;(add-hook 'c++-mode-hook 'irony-mode)
  ;;(add-hook 'c-mode-hook 'irony-mode)
  ;;(add-hook 'objc-mode-hook 'irony-mode)
  ;;(add-hook 'irony-mode-hook 'irony-cdb-autosetup-compile-options)
  
  ;;(require 'ac-c-headers)
  ;;(add-hook mode-hook
  ;;          (lambda () 
  ;;            ;; enaeble auto complete for c
  ;;            (add-to-list 'ac-sources 'ac-source-c-headers)
  ;;            (add-to-list 'ac-sources 'ac-source-c-header-symbols t)))
  ) ;; end layman-register-cc-custom-hook

(defun layman-setup-go-mode ()
  (setq tab-width 4)
  (setq indent-tabs-mode nil)
  (setq c-basic-offset 4)
  )  ; end layman-setup-go-mode

(defun layman-setup-c++-mode ()
  (require 'google-c-style)
  (google-set-c-style)
  (google-make-newline-indent)
  
  (eval-after-load 'flycheck
    '(progn
       (require 'flycheck-google-cpplint)
       ;; Add Google C++ Style checker.
       ;; In default, syntax checked by Clang and Cppcheck.
       (flycheck-add-next-checker 'c/c++-clang
                                  'c/c++-googlelint 'append)))
  
  (require 'modern-cpp-font-lock)
  (modern-c++-font-lock-global-mode t)
  (add-to-list 'c++-font-lock-extra-types "auto")
  (add-hook 'c++-mode-hook #'modern-c++-font-lock-mode)
  
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
  )  ; end layman-setup-c++-mode

(defun layman-setup-c-mode ()
  (require 'google-c-style)
  (google-set-c-style)
  (google-make-newline-indent)
  )  ; end layman-setup-c-mode

(defun layman-enable-go-mode ()
  (require 'go-mode)
  (add-hook 'go-mode-hook 'layman-setup-go-mode))

(defun layman-enable-c-mode ()
  (require 'cc-mode)
  (add-hook 'c-mode-hook 'layman-setup-c-mode))

(defun layman-enable-c++-mode ()
  (require 'cc-mode)
  (add-hook 'c++-mode-hook 'layman-setup-c++-mode))

(defun layman-enable-rust-mode ()
  (require 'rust-mode))

(defun layman-setup-mode ()
  (layman-setup-global-mode)
  (layman-enable-go-mode)
  (layman-enable-c-mode)
  (layman-enable-c++-mode)
  (layman-enable-rust-mode)
  ) ;; end layman-setup-mode

(layman-register-hook 'common 'layman-setup-mode)

(provide 'layman-mode)
