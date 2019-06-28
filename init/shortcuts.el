
(defun al () (interactive) (find-file path-hotkeys))
(defun ai () (interactive) (find-file al-path))
(defun sc () (interactive) (find-file "~/.emacs.d/init/shortcuts.el"))
(defun sh () (interactive) (find-file "~/.shell/ios.sh"))
(defun pf () (interactive) (find-file "~/.profile"))
(defun bu () (interactive) (find-file "~/.deps/build_tools/Build.py"))
(defun cu () (interactive) (find-file "~/.deps/cpp_utils/source/cpp_utils/Event.hpp"))

(defalias 'inst 'package-install)
(defalias 'var  'customize-variable)
(defalias 'com  'auto-complete-mode)
(defalias 'rem  'package-delete)
(defalias 'lin  'linum-mode)
(defalias 'inst 'package-install)
(defalias 'var  'customize-variable)
(defalias 'file 'find-file)
(defalias 'tab  'whitespace-mode)
(defalias 'stat 'magit-status)
(defalias 'push 'magit-push)
(defalias 'swb  'split-window-below)
(defalias 'ta   'treemacs-add-project-to-workspace)
(defalias 'tr   'treemacs-remove-project-from-workspace)
(defalias 'trn  'treemacs-rename)
