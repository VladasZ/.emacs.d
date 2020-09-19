
(defun ut ()
  (interactive)
  (find-file (concat path-build-tools "/" "Build.py")))

(defun en ()
  (interactive)
  (find-file (concat path-engine "/" path-cmake-file)))
