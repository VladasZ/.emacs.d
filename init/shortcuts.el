
(defun al () (interactive) (find-file path-hotkeys))
(defun ai () (interactive) (find-file al-path))
(defun sc () (interactive) (find-file "~/.emacs.d/init/shortcuts.el"))
(defun bu () (interactive) (find-file "~/.emacs.d/utils/Build.py"))

(defalias 'inst 'package-install)
(defalias 'var  'customize-variable)
(defalias 'com  'auto-complete-mode)
(defalias 'rem  'package-delete)
(defalias 'lin  'linum-mode)
(defalias 'inst 'package-install)
(defalias 'var  'customize-variable)
(defalias 'eb   'eval-buffer)
(defalias 'file 'find-file)
(defalias 'tab  'whitespace-mode)
(defalias 'stat 'magit-status)
(defalias 'push 'magit-push)

