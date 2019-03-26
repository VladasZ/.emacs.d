
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
		super-save
		multiple-cursors
		iedit
		yaml-mode
		dumb-jump
		))

(check-packages packages-list)

(drag-stuff-global-mode 1)

(global-auto-complete-mode t)
(projectile-global-mode)

(super-save-mode +1)
(setq super-save-auto-save-when-idle t)
(setq auto-save-default nil)
