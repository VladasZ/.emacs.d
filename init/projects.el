
(setq path-shell "~/shell")

(defun sh ()
  (interactive)
  (find-file (concat path-shell "/shell.sh")))


(setq path-utils "~/.emacs.d/utils")

(defun ut ()
  (interactive)
  (find-file (concat path-utils "/" "Build.py")))

(setq path-engine "~/.deps/test_engine")

(defun en ()
  (interactive)
  (find-file (concat path-engine "/" path-cmake-file)))

(setq path-sand "~/dev/sand/sand")

(defun sand ()
  (interactive)
  (find-file (concat path-sand "/" path-cmake-file)))

(setq path-smon (concat path-proj "/smon"))

(defun smon ()
  (interactive)
  (find-file (concat path-smon "/" path-cmake-file)))


(setq path-service (concat path-tes "/service"))

(defun tesla ()
  (interactive)
  (find-file (concat path-service "/" path-cmake-file)))

;; Vive

(setq path-node-fpga (concat path-tes "/NodeFPGA"))

(defun er ()
  (interactive)
  (find-file (concat path-node-fpga "/FPGA/top.sv")))

(defun ar ()
  (interactive)
  (find-file (concat path-node-fpga "/arm/main.cpp")))

(defun ca ()
  (interactive)
  (find-file (concat path-node-fpga "/calculations/source/sand/calculation_test.hpp")))

;; Magnetic

(setq path-magnetic (concat path-tes "/magnetictracking"))

(defun mar ()
  (interactive)
  (find-file (concat path-magnetic "/magnetic_arm/main.cpp")))
