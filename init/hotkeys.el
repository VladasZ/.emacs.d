
(defun map-key (key func)
  (global-set-key (kbd key) func))

(map-key "C-s" 'shrink-window)
