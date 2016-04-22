;; The emacs IRC client
(eval-after-load "erc"
  '(progn
     ;; Basic erc setup
     (setq erc-nick "sw2wolf"
           erc-user-full-name "sw2wolf"
		   erc-email-userid "***@163.com"
		   erc-server "irc.freenode.net"
		   erc-port "6667"

           erc-autojoin-channels-alist 
		   '(("freenode.net" "#lisp" "#racket" "#haskell")
			 ("oftc.net" "#emacs-cn"))

           erc-keywords '("emms" "lisp")
		   erc-pals '("rms")

           erc-format-nick-function 'erc-format-@nick
           erc-interpret-mirc-color t
           erc-button-buttonize-nicks nil
           erc-track-position-in-mode-line 'after-modes)

	 (setq erc-default-coding-system '(utf-8 . utf-8))
	 (setq erc-encoding-coding-alist '(("#linuxfire" . chinese-iso-8bit)))
     (setq erc-ignore-list nil)

     (erc-scrolltobottom-enable)
     ;(erc-spelling-mode t)
     (erc-netsplit-mode t)
     (erc-autojoin-mode 1)
	 (erc-match-mode 1)

     ;; Lots of default messages say the whole hostname of a user. Instead, use
     ;; short forms.
     (erc-define-catalog-entry 'english 'JOIN
                               "%n has joined channel %c")
     (erc-define-catalog-entry 'english 'NICK
                               "%n is now known as %N")
     (erc-define-catalog-entry 'english 'MODE
                               "%n has change mode for %t to %m")
     (erc-define-catalog-entry 'english 'QUIT
                               "%n has quit: %r")
     (erc-define-catalog-entry 'english 'TOPIC
                               "%n has set the topic for %c: \"%T\"")

     (require 'erc-goodies)

     ;; Don't spam me bro
     (setq erc-hide-list '("JOIN" "PART" "QUIT"))

     ;; Don't spam my modeline.
     (require 'erc-track)
     (erc-track-mode 1)
     (setq erc-track-exclude-types '("JOIN" "NICK" "PART" "QUIT" "MODE"
                                     "324" "329" "332" "333" "353" "477"))

     ;; Nickserv
     ;(load "~/.elliot-unix/emacs/erc-auth")
     ;(setq erc-prompt-for-nickserv-password nil)
     ;(require 'erc-services)
     ;(erc-services-mode 1)
	 (add-hook 'erc-after-connect
    	  '(lambda (SERVER NICK)
    	     (cond
    	      ((string-match "freenode\\.net" SERVER)
    	       (erc-message "PRIVMSG" "NickServ identify password1"))
    
    	      ((string-match "oftc\\.net" SERVER)
    	       (erc-message "PRIVMSG" "NickServ identify password2"))
    
    	      ((string-match "jin\\.tekken" SERVER)
    	       (erc-message "PRIVMSG" "#bitlbee identify password3")))))

     ;; Truncate buffers so they don't hog core.
     (setq erc-max-buffer-size 20000)
     (defvar erc-insert-post-hook)
     (add-hook 'erc-insert-post-hook 'erc-truncate-buffer)
     (setq erc-truncate-buffer-on-save t)))

(defadvice erc-cmd-IGNORE (after ignore-replys-to (&optional user) activate)
  "After every ignore, copy the list `erc-ignore-list' to
`erc-ignore-reply-list'. When I ignore someone, I want them *gone*."
  (erc-with-server-buffer (setq erc-ignore-reply-list erc-ignore-list)))

(defadvice erc-cmd-UNIGNORE (after ignore-replys-to (&optional user) activate)
  "In case of mistakes made with /ignore."
  (erc-with-server-buffer (setq erc-ignore-reply-list erc-ignore-list)))

(defun erc-cmd-OPME ()
  "tell chanserv to op me (from: http://paste.lisp.org/display/97466)"
  (interactive)
  (erc-message "PRIVMSG"
	       (format "chanserv op %s %s"
		       (erc-default-target)
		       (erc-current-nick)) nil))

(defun erc-cmd-DEOPME ()
  "deop myself (from: http://paste.lisp.org/display/97466)"
  (interactive)
  (erc-cmd-DEOP (format "%s" (erc-current-nick))))

;idk:  I don't know.
;iirc: If I Recall Correct
;afaik: As Far As I Know
