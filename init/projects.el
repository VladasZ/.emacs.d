
(setq path-shell "~/shell")

(defun sh ()
  (interactive)
  (find-file (concat path-shell "/shell.sh")))


(setq path-utils "~/.emacs.d/utils")

(defun ut ()
  (interactive)
  (find-file (concat path-utils "/" "Build.py")))


(setq path-engine (concat path-proj "/testengine"))

(defun en ()
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

(setq path-node-fpga (concat path-work "/NodeFPGA"))

(defun ver ()
  (interactive)
  (find-file (concat path-node-fpga "/FPGA/top.sv")))

(defun ar ()
  (interactive)
  (find-file (concat path-node-fpga "/arm/main.cpp")))

(defun cal ()
  (interactive)
  (find-file (concat path-node-fpga "/calculations/source/sand/main.cpp")))
