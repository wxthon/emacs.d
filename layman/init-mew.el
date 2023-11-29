(setq load-path (cons "/usr/local/share/emacs/site-lisp/mew" load-path))
(autoload 'mew "mew" nil t)
(autoload 'mew-send "mew" nil t)

(setq mew-icon-directory "/usr/local/share/emacs/site-lisp/mew/etc")

;;设定将密码保存一段时间，默认20分钟 
(setq mew-use-cached-passwd t)
(setq mew-passwd-timer-unit 999)
(setq mew-passwd-lifetime 999)

;; mew-pop-size设置成0时，pop邮件大小没有限制
(setq mew-pop-size 0)  
;; 不删除服务器上的邮件  
(setq mew-pop-delete t)  

(if (boundp 'read-mail-command)
     (setq read-mail-command 'mew))
(autoload 'mew-user-agent-compose "mew" nil t)

(if (boundp 'mail-user-agent)
     (setq mail-user-agent 'mew-user-agent))
(if (fboundp 'define-mail-user-agent)
     (define-mail-user-agent
        'mew-user-agent
        'mew-user-agent-compose
        'mew-draft-send-message
        'mew-draft-kill
        'mew-send-hook))

;;smtp服务器认证设定 
;(setq mew-smtp-auth-list (quote ("CRAM-MD5" "LOGIN" "PLAIN"))) 
;;smtp服务器不用认证采用下面设定 
(setq mew-smtp-auth-list nil)

(setq toolbar-mail-reader 'Mew)
(set-default 'mew-decode-quoted 't)

(when (boundp 'utf-translate-cjk)
       (setq utf-translate-cjk t)
       (custom-set-variables
          '(utf-translate-cjk t)))
(if (fboundp 'utf-translate-cjk-mode)
     (utf-translate-cjk-mode 1)) 

;
;;用w3m来读html格式邮件
;; 
(setq mew-mime-multipart-alternative-list '("Text/Html" "Text/Plain" "*."))
(condition-case nil
  (require 'mew-w3m)
  (file-error nil)) 
(setq mew-use-text/html t)

(setq mew-config-alist '(
    ("default"
         ("name"         .  "***")
         ("user"         .  "***")
         ("smtp-server"  .  "smtp.163.com")
         ("smtp-port"    .  "25")
         ("pop-server"   .  "pop.163.com")
         ("pop-port"     .  "110")
         ("smtp-user"    .  "***")
         ("pop-user"     .  "***")
         ("mail-domain"  .  "163.com")
         ("mailbox-type" .  pop)
         ("pop-auth"     .  pass)
         ("smtp-auth-list" . ("PLAIN" "LOGIN" "CRAM-MD5")))
    ("Foobar1"
         ("name"         .  "***")
         ("user"         .  "***")
         ("smtp-server"  .  "smtp.163.com")
         ("smtp-port"    .  "25")
         ("pop-server"   .  "pop.163.com")
         ("pop-port"     .  "110")
         ("smtp-user"    .  "***")
         ("pop-user"     .  "***")
         ("mail-domain"  .  "163.com")
         ("mailbox-type" .  pop)
         ("pop-auth"     .  pass)
         ("smtp-auth-list" . ("PLAIN" "LOGIN" "CRAM-MD5")))
	;; ("Foobar2"
    ;;      (mailbox-type          imap)
    ;;      (proto                 "%")
    ;;      (imap-server           "imap.gmail.com")
    ;;      (imap-user             "imapuser@gmail.com")
    ;;      (name                  "***")
    ;;      (user                  "***")
    ;;      (mail-domain           "gmail.com")
    ;;      (imap-size             0)
    ;;      (imap-delete           t)
    ;;      (imap-queue-folder     "%queue")
    ;;      (imap-trash-folder     "%Trash") ;; This must be in concile with your IMAP box setup
    ;;      (smtp-auth-list        ("PLAIN" "LOGIN" "CRAM-MD5")) 
    ;;      (smtp-user             "***@gmail.com")
    ;;      (smtp-server           "smtp.gmail.com"))
	;; news group comp.lang.lisp
	;; (usenet
    ;;     (mailbox-type         . mbox)
    ;;     (proto                . -)
    ;;     (nntp-server           "news.aioe.org")
    ;;     (nntp-user             nil) ;; should be nil default
    ;;     (nntp-header-only      nil)
    ;;     (nntp-newsgroup        "-comp.lang.lisp")
    ;;     (nntp-size             0)
    ;;     (nntp-msgid-user       "***")
    ;;     (smtp-auth-list        ("PLAIN" "LOGIN" "CRAM-MD5"))
    ;;     (smtp-user             "***@gmail.com")
    ;;     (smtp-server           "smtp.gmail.com")
 
    ;;     (mailinglist
    ;;      (mailbox-type          pop)
    ;;      (proto                 +)
    ;;      (pop-server            "pop.gmail.com")
    ;;      (name                  "***")
    ;;      (user                  "***")
    ;;      (mail-domain           "gmail.com")
    ;;      (pop-auth              pass)
    ;;      (pop-user              "***@gmail.com")
    ;;      (smtp-user             "***@gmail.com")
    ;;      (smtp-server           "smtp.gmail.com")))
))

(setq mew-ssl-verify-level 0)


;;;;;;;;;;;;;;;;;;;;;; 
;;信件引用设置 
;;;;;;;;;;;;;;;;;;;;;; 
(setq mew-cite-fields '("From:" "Subject:" "Date:" "Message-ID:")) 
(setq mew-cite-format "From: %s\nSubject: %s\nDate: %s\nMessage-ID: %s\n\n") 
(setq mew-cite-prefix-function 'mew-cite-prefix-username) 

;;gnus可以将密码放在配置文件里，收邮件的时候就不用输入密码了 
;;我找了一下，发现下面这个变量应该有类似功能，但没有搞掂，高人帮忙！ 
;(setq mew-passwd-alist '(hvjhvjhvj)


;; 默认的邮件保存在~/Mail，里面的文件Addrbook是地址本设置，设置好，在写邮件时可以自动补全，同gnus里使用bbdb一样，也有组群发功能。 

;; 一个地址簿样本： 

;; 代码: 
;; hvj hvj@hvj.org 
;; hhh hhh@hvj.org 
;; h hvj, hhh
