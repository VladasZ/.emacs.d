
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
