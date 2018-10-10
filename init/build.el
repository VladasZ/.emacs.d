
(defun python-build-script (param)
  (concat "python3 " (find-file-in-parent-dirs "build.py") " " param))

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
