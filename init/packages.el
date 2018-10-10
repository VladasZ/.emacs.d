
(defun check-packages (packages)
  (dolist (pack packages)
    (check-package pack)))

(setq packages-list
      '(
		treemacs
		projectile
		auto-complete
		cmake-mode
		monokai-theme
		drag-stuff
		magit
		iedit
		super-save
		))

(check-packages packages-list)

(drag-stuff-global-mode 1)
(drag-stuff-define-keys)
