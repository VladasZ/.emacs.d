(add-to-list 'default-frame-alist '(width  . 160))
(add-to-list 'default-frame-alist '(height . 44))

(fset 'yes-or-no-p 'y-or-n-p)
(delete-selection-mode 1)
(cua-mode)

(setq scroll-lines-count 4)

(setq verilog-auto-newline nil)
(setq-default cursor-type 'bar)

(setq inhibit-startup-message t
      inhibit-startup-echo-area-message t)

(setq linum-format "%d ")
(setq ring-bell-function 'ignore)

(tool-bar-mode -1)
(menu-bar-mode -1)
(toggle-scroll-bar -1)

(if is-macos
	(add-to-path "/usr/local/bin:"))

(setq font-size
	  (if is-macos
		  200
		  140))

(set-face-attribute 'default nil
                    :family  "Droid Sans Mono"
                    :height  font-size)

(setq treemacs-ignored-types '("vcd" "out" "asc" "zip" "bin" "blif" "dat" "cache" "eld"))
(setq treemacs-ignored-files '(".git" ".cache" "elpa" ".gitmodules" "__pycache__" "auto-save-list" "simulation_flag.v"))

(defun is-treemacs-ignored-file (file _)
  (setq extension (file-name-extension file))
  (if (string-is-empty extension)
	(member file treemacs-ignored-files)
	(member (file-name-extension file) treemacs-ignored-types)))
