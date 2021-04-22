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

(menu-bar-mode -1)

(if (display-graphic-p)
    (progn
      (tool-bar-mode -1)
      (scroll-bar-mode -1)))

(setq font-size
	  (if is-macos
		  200
		  140))

(set-face-attribute 'default nil
                    :family  "Droid Sans Mono"
                    :height  font-size)

(setq treemacs-ignored-types '("vcd" "out" "asc" "zip" "bin" "blif" "dat" "cache" "eld"))
(setq treemacs-ignored-files '(".git" ".cache" "elpa" ".gitmodules" "__pycache__" "auto-save-list" "simulation_flag.v" ".DS_Store"))
(setq treemacs-ignored-parts "session.10")

(defun is-treemacs-ignored-file (file _)
  (setq extension (file-name-extension file))
  (if (string-is-empty extension)
	(member file treemacs-ignored-files)
	(or (member (file-name-extension file) treemacs-ignored-types)
		(string-contains file treemacs-ignored-parts))))
		

(setq make-backup-files nil)


(if is-macos
	(add-to-path "/usr/local/bin:"))

(add-to-path "/opt/local/bin")
(add-to-path "/Users/vladas/dev/tools/gcc-arm-none-eabi/bin")

(add-to-python-path "/Users/vladas/.deps/build_tools")
