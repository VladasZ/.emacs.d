
(defun check-packages (packages)
  (dolist (pack packages)
    (check-package pack)))

(setq packages-list
      '(treemacs treemacs))

(check-packages packages-list)
