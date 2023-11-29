

;; Let's define a function which initializes auto-complete-c-headers and gets called for c/c++ hooks
(defun my:ac-c-header-init()
  (require 'auto-complete-c-headers)
  (add-to-list 'ac-sources 'ac-source-c-headers)
  (add-to-list 'achead:include-directories "/usr/include")
  (add-to-list 'achead:include-directories "/usr/include/c++/5.3.1")
  (add-to-list 'achead:include-directories "/usr/include/glog")
  (add-to-list 'achead:include-directories "/usr/include/linux")
  (add-to-list 'achead:include-directories "/usr/local/include")
  (add-to-list 'achead:include-directories "/usr/local/include/boost")
  (add-to-list 'achead:include-directories "/usr/include"))
;; Now let's call this function from c/c++ hooks
(add-hook 'c++-mode-hook 'my:ac-c-header-init)
(add-hook 'c-mode-hook 'my:ac-c-header-init)


;; Start flymake-google-cpplint-load
;; Let's define a function for flymake initialization
(defun my:flymake-google-init()
  (require 'flymake-google-cpplint)
  (custom-set-variables
   '(flymake-google-cpplint-command "/usr/bin/cpplint"))
  (flymake-google-cpplint-load))
;;(add-hook 'c-mode-hook 'my:flymake-google-init)
;;(add-hook 'c++-mode-hook 'my:flymake-google-init)

;; Start google-c-style with emacs
(require 'google-c-style)
(add-hook 'c-mode-common-hook 'google-set-c-style)
(add-hook 'c-mode-common-hook 'google-make-newline-indent)


(require 'basic-c-compile)

(require 'cmake-mode)
