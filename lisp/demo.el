

(defun demo_detail (mode)
  "This is a demo"
  (interactive "Slight or dark? "))



(defun demo_dark ()
  (interactive)
  (demo_detail 'dark))

(provide 'demo)



(+ 2 4)
(> 2 4)
;; print a message
(message "Hello World")

;; define a function
(defun count-words-buffer ()
  (let ((count 0))
    (save-excursion
      (goto-char (point-min))
      (while (< (point) (point-max))
	(forward-word 1)
	(setq count (1+ count)))
      (message "buffer contains %d words." count))))
;; call it
(count-words-buffer)


(defun  hello (someone)
  "Say hello to SOMEONE via M-x hello."
  (interactive "sWho do you want to say hello to? ")
  (message "Hello %s!" someone))
(hello "wanghaiteng")










