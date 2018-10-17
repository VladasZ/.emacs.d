
(defun map-key (key func)
  (global-set-key (kbd key) func))

(defun mode-key (mode key func)
  (define-key mode (kbd key) func))

(map-key "M-e"       'eval-buffer)
(map-key "M-1"       'async-shell-command)
(map-key "M-d"       'kill-whole-line)
(map-key "M-s"       'shrink-window-if-larger-than-buffer)
(map-key "M-/"       'comment-or-uncomment-region)
(map-key "M-a"       'other-window)
(map-key "M-\\"      'switch-to-next-buffer)
(map-key "M-'"       'switch-to-prev-buffer)
(map-key "M-<right>" 'windmove-right)	
(map-key "M-<left>"  'windmove-left)
(map-key "M-<up>"    'drag-stuff-up)
(map-key "M-<down>"  'drag-stuff-down)
(map-key "M-`"       'projectile-find-file)


(map-key "C-s"       'shrink-window)
(map-key "C-f"       'projectile-grep)
(map-key "C-o"       'projectile-find-file)
(map-key "C-z"       'undo)
(map-key "C-q"       'kill-buffer-and-window)
(map-key "C-<up>"    'ff-find-other-file)
(map-key "C-<down>"  'ff-find-other-file)
(map-key "C-d"       'duplicate-line)
(map-key "C-n"       'find-file)
(map-key "C-a"       'mark-whole-buffer)

(with-eval-after-load 'treemacs-mode
  (mode-key treemacs-mode-map "C-d" 'treemacs-delete))

(with-eval-after-load 'cc-mode
  (mode-key c-mode-base-map "C-b" 'build-cpp-project))

(with-eval-after-load 'cmake-mode
  (mode-key cmake-mode-map "C-b" 'build-cpp-project))

(with-eval-after-load 'python
  (mode-key python-mode-map "C-r" 'run-python-script))

(with-eval-after-load 'verilog-mode
  (mode-key verilog-mode-map "C-r" 'run-verilog-project)
  (mode-key verilog-mode-map "C-b" 'build-verilog-project)
  (mode-key verilog-mode-map "M-f" 'flash-verilog-build)
  (mode-key verilog-mode-map "C-t" 'simulate-verilog-project))


