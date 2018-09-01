

;; fix mac keyboard
(defun layman/mac-set-keys ()
  (setq mac-option-modifier 'alt)
  (setq mac-command-modifier 'meta)
  (global-set-key [kp-delete] 'delete-char))

(layman/register-hook 'mac 'layman/mac-set-keys)

;; c-mode hooks
(defun layman/set-newline-and-indent ()
  (local-set-key (kbd "RET") 'newline-and-indent))

(defun layman/open-shell-other-buffer ()
  "Open eshell in other buffer"
  (interactive)
  ;;(split-window-horizontally)
  ;;(split-window-vertically)
  ;;(eshell)
  (ansi-term "csh")
  ;;(let ((proc (start-process "cmd" nil "cmd.exe" "/C" "start" "cmd.exe")))
  ;;(set-process-query-on-exit-flag proc nil))
)

(defun layman/window-maximized () 
  (interactive) 
  (x-send-client-message nil 0 nil "_NET_WM_STATE" 32 '(2 "_NET_WM_STATE_MAXIMIZED_HORZ" 0))
  (x-send-client-message nil 0 nil "_NET_WM_STATE" 32 '(2 "_NET_WM_STATE_MAXIMIZED_VERT" 0)))

(defun layman/set-global-keys ()
  (global-unset-key "\C-z")

  ;; 绑定全局键值
  ;; 也可以绑定单独到某个mode，比如cc-mode (define-key cc-mode-map (kbd "(") 'skeleton-pair-insert-maybe)
  (global-set-key (kbd "(")  'skeleton-pair-insert-maybe)
  (global-set-key (kbd "{")  'skeleton-pair-insert-maybe)
  (global-set-key (kbd "\'") 'skeleton-pair-insert-maybe)
  (global-set-key (kbd "\"") 'skeleton-pair-insert-maybe)
  (global-set-key (kbd "[")  'skeleton-pair-insert-maybe)

  (global-set-key (kbd "C-j") 'goto-line)  
  ;;设置C-/为undo,M-/为set-mark 
  (global-set-key (kbd "C-/") 'undo) 

  ;; 扩大或者缩小窗口（上下）,Ctrl+{} 
  (global-set-key (kbd "C-}") 'enlarge-window) 
  (global-set-key (kbd "C-{") 'shrink-window)

  (global-set-key (kbd "C-<left>")  'windmove-left)
  (global-set-key (kbd "C-<right>") 'windmove-right)
  (global-set-key (kbd "C-<up>")    'windmove-up)
  (global-set-key (kbd "C-<down>")  'windmove-down)

  ;;(global-set-key [(shift home)] '(lambda () (interactive) (other-window -1)))
  ;;(global-set-key [(shift end)] '(lambda () (interactive) (other-window 1)))

  (global-set-key "\C-x\C-m" 'execute-extended-command)
  (global-set-key "\C-c\C-m" 'execute-extended-command)

  ;; 按下C-x k立即关闭掉当前的buffer
  (global-set-key (kbd "C-x k") 'kill-this-buffer)

  (require 'thingatpt)
  (global-set-key (kbd "<f1>") 'layman/open-shell-other-buffer)
  (global-set-key (kbd "<f2>") 'describe-char)
  (global-set-key (kbd "<f3>") 'find-file-at-point)
  (global-set-key (kbd "<f4>") 'forward-whitespace)
  (global-set-key (kbd "<f5>") '(lambda () (interactive) (insert #x3bb)))
  ;;√:#x221a) π:#x3c0) λ:#x3bb ∑:#x2211
  (global-set-key (kbd "<f6>") '(lambda () (interactive) (insert "/msg lambdabot @hoogle "))) ;used in ERC

  ;;对光标之前的表达式进行求值
  (global-set-key [f5] 'slime-eval-last-expression)
  (global-set-key [(f9)] 'list-bookmarks)
  (global-set-key [(f10)] 'bookmark-set)
  (global-set-key [(f12)] 'desktop-save)

  (global-set-key [f11] 'layman/window-maximized)

  (require 'ibuffer)
  (global-set-key (kbd "C-x C-b") 'ibuffer)
  ) ;; end layman/set-global-keys

(defun layman/set-mode-keys ()
  (add-hook 'c-mode 'layman/set-newline-and-indent)
  )

(defun layman/set-common-keys ()
  (layman/set-global-keys)
  (layman/set-mode-keys)
  )

(layman/register-hook 'common 'layman/set-common-keys)

