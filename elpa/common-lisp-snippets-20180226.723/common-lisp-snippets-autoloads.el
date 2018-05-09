;;; common-lisp-snippets-autoloads.el --- automatically extracted autoloads
;;
;;; Code:
(add-to-list 'load-path (directory-file-name (or (file-name-directory #$) (car load-path))))

;;;### (autoloads nil "common-lisp-snippets" "common-lisp-snippets.el"
;;;;;;  (23282 61557 160985 708000))
;;; Generated autoloads from common-lisp-snippets.el

(autoload 'common-lisp-snippets-initialize "common-lisp-snippets" "\
Initialize Common Lisp snippets, so Yasnippet can see them.

\(fn)" nil nil)

(eval-after-load 'yasnippet '(common-lisp-snippets-initialize))

;;;***

;;;### (autoloads nil nil ("common-lisp-snippets-pkg.el") (23282
;;;;;;  61557 161985 702000))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; common-lisp-snippets-autoloads.el ends here
