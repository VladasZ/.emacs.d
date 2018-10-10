
(setq home-directory (getenv "HOME"))

(defun replace-tilda-with-path (string)
  (replace-in-string string "~" home-directory))

(setq is-macos (eq system-type 'darwin))
