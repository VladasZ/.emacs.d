
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
		super-save
		))

(check-packages packages-list)

(drag-stuff-global-mode 1)
;(drag-stuff-define-keys)

(global-auto-complete-mode t)
(projectile-global-mode)

(super-save-mode +1)
(setq super-save-auto-save-when-idle t)
(setq auto-save-default nil)

;; (with-eval-after-load 'treemacs
;;   (defun treemacs-ignore-gitignore (file _)
;;     (string= file ".gitignore"))
;;   (push #'treemacs-ignore-gitignore treemacs-ignored-file-predicates))
