
(defun layman/set-proxy()
  (setq url-proxy-services
	'(("no_proxy" . "^\\(localhost\\|10\\..*\\|192\\.168\\..*\\)")
	  ("http" . "127.0.0.1:8118")
	  ("https" . "127.0.0.1:8118")))
  ) ;; end layman/set-proxy

;;(layman/register-hook 'common 'layman/set-proxy)
