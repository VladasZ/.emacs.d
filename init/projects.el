
(setq path-shell "~/shell")

(defun sh ()
  (interactive)
  (find-file (concat path-shell "/shell.sh")))


(setq path-utils "~/.emacs.d/utils")

(defun ut ()
  (interactive)
  (find-file (concat path-utils "/" "Build.py")))


(setq path-engine (concat path-proj "/testengine"))

(defun engine ()
  (interactive)
  (find-file (concat path-engine "/" path-cmake-file)))


(setq path-smon (concat path-proj "/smon"))

(defun smon ()
  (interactive)
  (find-file (concat path-smon "/" path-cmake-file)))


(setq path-service (concat path-work "/service"))

(defun tesla ()
  (interactive)
  (find-file (concat path-service "/" path-cmake-file)))

(setq path-verilog (concat path-work "/NodeFPGA"))

(defun ver ()
  (interactive)
  (find-file (concat path-verilog "/top.v")))
