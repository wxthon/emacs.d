;;; highlight-doxygen-autoloads.el --- automatically extracted autoloads
;;
;;; Code:
(add-to-list 'load-path (directory-file-name (or (file-name-directory #$) (car load-path))))

;;;### (autoloads nil "highlight-doxygen" "highlight-doxygen.el"
;;;;;;  (23531 51943 206335 641000))
;;; Generated autoloads from highlight-doxygen.el

(defvar highlight-doxygen-global-mode nil "\
Non-nil if Highlight-Doxygen-Global mode is enabled.
See the `highlight-doxygen-global-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `highlight-doxygen-global-mode'.")

(custom-autoload 'highlight-doxygen-global-mode "highlight-doxygen" nil)

(autoload 'highlight-doxygen-global-mode "highlight-doxygen" "\
Toggle Highlight-Doxygen mode in all buffers.
With prefix ARG, enable Highlight-Doxygen-Global mode if ARG is positive;
otherwise, disable it.  If called from Lisp, enable the mode if
ARG is omitted or nil.

Highlight-Doxygen mode is enabled in all buffers where
`(lambda nil (when (apply (function derived-mode-p) highlight-doxygen-modes) (highlight-doxygen-mode 1)))' would do it.
See `highlight-doxygen-mode' for more information on Highlight-Doxygen mode.

\(fn &optional ARG)" t nil)

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; highlight-doxygen-autoloads.el ends here
