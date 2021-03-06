
(defun build-script-path ()
O  (expand-home-path (concat (projectile-project-root) "build.py")))

(defun run-build-script-with-params (params)
  (save-buffer)
  (message (build-script-path))
  (message params)
  (async-shell-command (concat python-command (build-script-path) " " params)))

; CMake

(defun run-cmake (&optional path)
  (interactive)
  (save-buffer)
  (async-shell-command (concat "cmake " (if path path "." ))))

; Python

(defun run-python-script ()
  (interactive)
  (save-buffer)
  (async-shell-command (concat python-command (buffer-file-name (current-buffer)))))

; C++

(defun prepare-cpp-project ()
  (interactive)
  (run-build-script-with-params "--prepare"))

(defun build-cpp-project ()
  (interactive)
  (run-build-script-with-params "--build"))

(defun run-cpp-project ()
  (interactive)
  (run-build-script-with-params "--run"))

(defun run-hand-project ()
  (interactive)
  (run-build-script-with-params "--run --hand"))

(defun test-cpp-project ()
  (interactive)
  (run-build-script-with-params "--test"))

(defun clean-cpp-project ()
  (interactive)
  (run-build-script-with-params "--clean"))

(defun flash-cpp-project ()
  (interactive)
  (run-build-script-with-params "--flash"))

(defun cpp-compilers-info ()
  (interactive)
  (run-build-script-with-params "--dump-available-compilers"))

; Verilog

(defun build-verilog-with-params (params)
  (run-build-script-with-params (concat "--verilog " params)))
  
(defun run-verilog-project ()
  (interactive)
  (build-verilog-with-params "--run"))

(defun build-verilog-project ()
  (interactive)
  (build-verilog-with-params "--build"))

(defun flash-verilog-build ()
  (interactive)
  (build-verilog-with-params "--flash"))

(defun simulate-verilog-project ()
  (interactive)
  (build-verilog-with-params "--simulate"))

