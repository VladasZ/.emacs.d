
(defun check-packages (packages)
  (dolist (pack packages)
    (check-package pack)))

(setq packages-list
      '(
		treemacs
		auto-complete
		cmake-mode
		monokai-theme
		drag-stuff
		))

(check-packages packages-list)

(drag-stuff-global-mode 1)
(drag-stuff-define-keys)
