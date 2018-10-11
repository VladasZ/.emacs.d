
(setq home-directory (getenv "HOME"))

(defun replace-tilda-with-path (string)
  (replace-in-string string "~" home-directory))

(setq is-macos (eq system-type 'darwin))
(setq is-windows (eq system-type 'windows-nt))

(setq python-command
	  (if is-windows
		  "python "
		  "python3 "))
