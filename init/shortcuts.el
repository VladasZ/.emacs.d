
(defcustom al-path "~/.emacs.d/init.el"
   "init.el file path."
   :group 'paths
   :type 'directory)

(defun al () (interactive) (find-file al-path))
(defun sc () (interactive) (find-file "~/.emacs.d/init/shortcuts.el"))

(defalias 'res 'restart-emacs)
(defalias 'inst 'package-install)
(defalias 'var 'customize-variable)
(defalias 'eb 'eval-buffer)
(defalias 'com 'auto-complete-mode)
(defalias 'rem 'package-delete)
(defalias 'dir 'dired-sidebar-toggle-sidebar)
(defalias 'lin 'linum-mode)
(defalias 'inst 'package-install)
(defalias 'var 'customize-variable)
(defalias 'eb 'eval-buffer)
