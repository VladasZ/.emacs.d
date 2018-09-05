
(defun check-packages (packages)
  (dolist (pack packages)
    (check-package pack)))

(setq packages-list
      '(treemacs auto-complete))

(check-packages packages-list)
