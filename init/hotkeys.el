
(defun map-key (key func)
  (global-set-key (kbd key) func))

(map-key "M-e"    'eval-buffer)
(map-key "M-1"    'async-shell-command)
(map-key "M-d"    'kill-whole-line)
(map-key "M-s"    'shrink-window-if-larger-than-buffer)

(map-key "C-s"    'shrink-window)
(map-key "C-f"    'projectile-grep)
(map-key "C-o"    'projectile-find-file)
(map-key "C-z"    'undo)
(map-key "C-q"    'delete-window)
(map-key "C-<up>" 'ff-find-other-file)
(map-key "C-<down>" 'ff-find-other-file)
(map-key "C-d"    'duplicate-line)
(map-key "C-n"    'treemacs-create-file)

