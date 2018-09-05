
(defun check-packages (packages)
  (dolist (pack packages)
    (check-package pack)))

(setq packages-list
      '(
		treemacs
		auto-complete
		cmake-mode
		monokai-theme 
		))

(check-packages packages-list)
