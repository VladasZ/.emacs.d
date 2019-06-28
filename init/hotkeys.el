
(defun map-key (key func)
  (global-set-key (kbd key) func))

(defun mode-key (mode key func)
  (define-key mode (kbd key) func))

(when (eq system-type 'darwin) 
  (setq mac-option-modifier 'control)
  (setq mac-command-modifier 'meta)
  (global-set-key [kp-delete] 'delete-char))

(global-set-key [home] 'move-beginning-of-line)
(global-set-key [end]  'move-end-of-line)

(map-key "<next>"      'my-scroll-up)
(map-key "<prior>"     'my-scroll-down)

(map-key "M-e"         'eval-buffer)
(map-key "M-d"         'kill-whole-line)
(map-key "M-/"         'comment-or-uncomment-region) 
(map-key "M-a"         'other-window)
(map-key "M-."         'save-and-switch-to-next-buffer)
(map-key "M-,"         'save-and-switch-to-prev-buffer)
(map-key "M-<right>"   'windmove-right)	
(map-key "ESC <right>" 'windmove-right)	
(map-key "M-<left>"    'windmove-left)
(map-key "ESC <left>"  'windmove-left)
(map-key "M-<up>"      'ff-find-other-file)
(map-key "M-<down>"    'ff-find-other-file)
(map-key "M-;"         'iedit-mode)
(map-key "M-j"         'dumb-jump-go)
(map-key "M-z"         'undo)
(map-key "M-s"         'save-buffer)

(map-key "C-<next>"    'mc/mark-next-like-this)
(map-key "C-<prior>"   'mc/mark-previous-like-this)
(map-key "C-s"         'shrink-window)
(map-key "C-q"         'kill-buffer-and-window)
(map-key "C-<up>"      'drag-stuff-up)
(map-key "C-<down>"    'drag-stuff-down)
(map-key "C-d"         'duplicate-line)
(map-key "C-a"         'mark-whole-buffer)

(with-eval-after-load 'treemacs-mode
  (mode-key treemacs-mode-map "C-d" 'treemacs-delete))

(with-eval-after-load 'cc-mode
  (mode-key c-mode-base-map "M-p"  'prepare-cpp-project)
  (mode-key c-mode-base-map "M-b"  'build-cpp-project)
  (mode-key c-mode-base-map "M-r"  'run-cpp-project)
  (mode-key c-mode-base-map "M-h"  'run-hand-project)
  (mode-key c-mode-base-map "M-k"  'clean-cpp-project)
  (mode-key c-mode-base-map "M-f"  'flash-cpp-project)
  (mode-key c-mode-base-map "M-t"  'test-cpp-project))

(with-eval-after-load 'cmake-mode
  (mode-key cmake-mode-map "M-p"   'prepare-cpp-project)
  (mode-key cmake-mode-map "M-b"   'build-cpp-project)
  (mode-key cmake-mode-map "M-r"   'run-cpp-project)
  (mode-key cmake-mode-map "M-k"   'clean-cpp-project)
  (mode-key cmake-mode-map "M-f"   'flash-cpp-project)
  (mode-key cmake-mode-map "M-t"   'test-cpp-project)
  (mode-key cmake-mode-map "M-m"   'run-cmake))

(with-eval-after-load 'python
  (mode-key python-mode-map "M-r"  'run-python-script))

(with-eval-after-load 'verilog-mode
  (mode-key verilog-mode-map "M-r" 'run-verilog-project)
  (mode-key verilog-mode-map "M-b" 'build-verilog-project)
  (mode-key verilog-mode-map "M-f" 'flash-verilog-build)
  (mode-key verilog-mode-map "M-t" 'simulate-verilog-project))


