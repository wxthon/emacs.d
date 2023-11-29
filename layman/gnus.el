(setq gnus-select-method '(nntp "news.newsfan.net"))
(setq user-full-name "sw2wolf") 
(setq user-mail-address "***@163.com")

;;;;;;;;;;;;;;;;;;;;  
;;   语言环境设定  
;;;;;;;;;;;;;;;;;;;;  
(set-language-environment 'Chinese-GB)
(setq gnus-default-charset 'chinese-iso-8bit
      gnus-group-name-charset-group-alist '((".*" . cn-gb-2312))
      gnus-summary-show-article-charset-alist
      '((1 . cn-gb-2312)
    (2 . gb18030)
    (3 . chinese-iso-8bit)
    (4 . gbk)
    (5 . big5)
    (6 . utf-8))
      gnus-newsgroup-ignored-charsets  
      '(unknown-8bit x-unknown iso-8859-1))

;;;;;;;;;;;;;;;;;;;;  
;;自动显示图片  
;;;;;;;;;;;;;;;;;;;;  
(auto-image-file-mode)
(setq mm-inline-large-images t)  
(add-to-list 'mm-attachment-override-types "image/*")

  
(setq gnus-posting-styles  
      '((".*"  
     (name "sw2wolf")
     (address "***@163.com")
     (signature "e^pi+1=0")
     )))

;; set email reader 
(setq gnus-secondary-select-methods '((nnml ""))) ;nnfolder，nnmbox, nnml

;; set pop server 
(setq mail-sources 
	  '((pop :server "pop.163.com"   ;; 在这里设置 pop3 服务器
             :user "***@163.com"         ;; 用户名
             :port "pop3"
             :password "***")))          ;; 密码

;; set smtp 
(setq smtpmail-auth-credentials 
    '(("smtp.163.com"                ;; SMTP 服务器
       25                            ;; 端口号
       "***@163.com"                 ;; 用户名
       "***")))                      ;; 密码

(setq smtpmail-default-smtp-server "smtp.163.com") 
(setq smtpmail-smtp-server "smtp.163.com") 
(setq message-send-mail-function 'smtpmail-send-it)

;;html转换成txt查看
(eval-after-load "mm-decode"
  '(progn
	 (add-to-list 'mm-discouraged-alternatives "text/html")
	 (add-to-list 'mm-discouraged-alternatives "text/richtext")))
