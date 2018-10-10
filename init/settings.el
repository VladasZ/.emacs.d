(add-to-list 'default-frame-alist '(width  . 160))
(add-to-list 'default-frame-alist '(height . 44))

(fset 'yes-or-no-p 'y-or-n-p)
(delete-selection-mode 1)
(cua-mode)

(setq verilog-auto-newline nil)
(setq-default cursor-type 'bar)


(setq inhibit-startup-message t
      inhibit-startup-echo-area-message t)

(setq linum-format "%d ")
(setq ring-bell-function 'ignore)

(tool-bar-mode -1)
(menu-bar-mode -1)
(toggle-scroll-bar -1)

(setenv "PATH"
  (concat
   ;; Change this with your path to MSYS bin directory
   "C:\\cygwin64\\bin;"
   (getenv "PATH")))

(setq font-size
	  (if is-macos
		  200
		  140))

(set-face-attribute 'default nil
                    :family  "Droid Sans Mono"
                    :height  font-size)
