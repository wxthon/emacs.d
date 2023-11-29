
;;; Code:
(require 'layman-base)
(require 'layman-hydra)

(defun layman-init-undo-tree ()
  "Init undo-tree feature."
  (use-package undo-tree
    :ensure t
    :init (set 'undo-tree-auto-save-history nil)
    :after hydra
    :config
    (global-undo-tree-mode)
    :bind ("C-x C-h u" . hydra-undo-tree/body))
    ;;(hydra-undo-tree (:hint nil)
    ;;                      "_p_: undo  _n_: redo _s_: save _l_: load"
    ;;			    ("p"   undo-tree-undo)
    ;;			    ("n"   undo-tree-redo)
    ;;			    ("s"   undo-tree-save-history)
    ;;			    ("l"   undo-tree-load-history)
    ;;			    ("u"   undo-tree-visualize "visualize" :color blue)
    ;;			    ("q"   nil "quit" :color blue)))
  )

(layman-register-hook 'common 'layman-init-undo-tree)

(provide 'layman-undo)
;;; layman-undo.el ends here
