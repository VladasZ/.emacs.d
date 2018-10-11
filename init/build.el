
(setq build-script-path (expand-home-path "~/.emacs.d/utils/Build.py"))

(defun run-build-script-with-params (params)
  (save-buffer)
  (async-shell-command (concat python-command build-script-path " " params)))

; Python

(defun run-python-script ()
  (interactive)
  (save-buffer)
  (async-shell-command (concat python-command (buffer-file-name (current-buffer)))))

; C++

(defun build-cpp-project ()
  (interactive)
  (run-build-script-with-params "--make"))

(defun prepare-build-project ()
  (interactive)
  (run-build-script-with-params ""))

(defun make-project ()
  (interactive)
  (run-build-script-with-params "--make"))

; Verilog

(defun build-verilog-with-params (params)
  (run-build-script-with-params (concat "--verilog " params)))
  
(defun run-verilog-project ()
  (interactive)
  (build-verilog-with-params "--run"))

(defun build-verilog-project ()
  (interactive)
  (build-verilog-with-params "--build"))

(defun simulate-verilog-project ()
  (interactive)
  (build-verilog-with-params "--simulate"))


