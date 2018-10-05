
(defun map-key (key func)
  (global-set-key (kbd key) func))

(map-key "M-e" 'eval-buffer)

(map-key "C-s" 'shrink-window)
(map-key "C-f" 'projectile-grep)
(map-key "C-o" 'projectile-find-file)
(map-key "C-z" 'undo)
(map-key "C-q" 'delete-window)
(map-key "M-1" 'shell-command)
