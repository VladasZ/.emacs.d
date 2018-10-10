
(defun python-build-script (param)
  (concat "python3 " (find-file-in-parent-dirs "build.py") " " param))

(setq build-script-path "~/.emacs.d/utils/Build.py")

(defun run-build-script-with-params (params)
  (save-buffer)
  (async-shell-command (concat "python3 " build-script-path " " params)))

(defun build-cpp-project ()
  (interactive)
  (run-build-script-with-params "--make"))

(defun run-verilog-project ()
  (interactive)
  (save-buffer)
  (async-shell-command (python-build-script "--run")))

(defun build-verilog-project ()
  (interactive)
  (save-buffer)
  (async-shell-command (python-build-script "")))

(defun simulate-verilog-project ()
  (interactive)
  (save-buffer)
  (async-shell-command (python-build-script "--simulate")))
