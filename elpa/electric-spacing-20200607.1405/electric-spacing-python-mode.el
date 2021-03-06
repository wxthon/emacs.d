;;; electric-spacing-python-mode.el --- python mode tunings

;; Copyright (C) 2019 Free Software Foundation, Inc.

;; Author: William Xu <william.xwl@gmail.com>

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation; either version 3, or (at your option)
;; any later version.

;; This program is distributed in the hope that it will be useful, but
;; WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
;; General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with EMMS; see the file COPYING.  If not, write to the
;; Free Software Foundation, Inc., 51 Franklin St, Fifth Floor,
;; Boston, MA 02110-1301, USA.

;;; Code:

(require 'electric-spacing)

(defun electric-spacing-python-mode-: ()
  (if (and (not (nth 3 (syntax-ppss)))  ; not in string
           (eq (electric-spacing-enclosing-paren) ?\{))
      (electric-spacing-insert ":" 'after)
    (insert ":")))

(defun electric-spacing-python-mode-* ()
  "See `electric-spacing-insert'."
  ;; Handle python *args and **kwargs
  ;; Can only occur after '(' ',' or on a new line, so just check
  ;; for those. If it's just after a comma then also insert a space
  ;; before the *.
  (cond ((looking-back "," nil)
         (insert " *"))
        ((looking-back "[(,^)][ \t]*[*]?" nil)
         (insert "*"))
        ;; Othewise act as normal
        (t
         (electric-spacing-insert "*"))))

(defun electric-spacing-python-mode-% ()
  "See `electric-spacing-insert'."
  (cond
   ;; If this is a comment or string, we most likely
   ;; want no spaces - probably string formatting
   ((and (derived-mode-p 'python-mode)
         (electric-spacing-document?))
    (insert "%"))
   (t
    (electric-spacing-insert "%"))))

(provide 'electric-spacing-python-mode)
;;; electric-spacing-python-mode.el ends here
