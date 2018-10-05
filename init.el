(require 'package)
(let* ((no-ssl (and (memq system-type '(windows-nt ms-dos))
                    (not (gnutls-available-p))))
       (proto (if no-ssl "http" "https")))
  (add-to-list 'package-archives (cons "melpa" (concat proto "://melpa.org/packages/")) t)
;  (add-to-list 'package-archives (cons "melpa-stable" (concat proto "://stable.melpa.org/packages/")) t)
  (when (< emacs-major-version 24)
    (add-to-list 'package-archives '("gnu" . (concat proto "://elpa.gnu.org/packages/")))))
(package-initialize)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(cmake-ide-build-dir "~/dev/projects/testengine/build")
 '(custom-enabled-themes (quote (monokai)))
 '(custom-safe-themes
   (quote
	("bd7b7c5df1174796deefce5debc2d976b264585d51852c962362be83932873d9" "5f27195e3f4b85ac50c1e2fac080f0dd6535440891c54fcfa62cdcefedf56b1b" default)))
 '(linum-format "%d " t)
 '(nrepl-message-colors
   (quote
	("#CC9393" "#DFAF8F" "#F0DFAF" "#7F9F7F" "#BFEBBF" "#93E0E3" "#94BFF3" "#DC8CC3")))
 '(package-selected-packages
   (quote
	(levenshtein magit pt projectile monokai-alt-theme drag-stuff cmake-mode treemacs restart-emacs monokai-theme fsm color-theme-sanityinc-tomorrow auto-complete)))
 '(projectile-globally-ignored-directories
   (quote
	(".idea" ".ensime_cache" ".eunit" ".git" ".hg" ".fslckout" "_FOSSIL_" ".bzr" "_darcs" ".tox" ".svn" ".stack-work" "build" "make")))
 '(tab-width 4)
 '(treemacs-width 22)
 '(truncate-lines nil))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(add-to-list 'default-frame-alist '(width  . 160))
(add-to-list 'default-frame-alist '(height . 44))

(set-face-attribute 'default nil
                    :family  "Droid Sans Mono"
                    :height  140)

(setq linum-format "%d ")
(setq ring-bell-function 'ignore)

(tool-bar-mode -1)
(menu-bar-mode -1)
(toggle-scroll-bar -1)

(setq projectile-projects-cache (make-hash-table))

(add-to-list 'load-path "~/.emacs.d/init")

(load "paths")
(load "utils")
(load "packages")
(load "shortcuts")
(load "auto-modes")
(load "hotkeys")
(load "projects")

(setenv "PATH"
  (concat
   ;; Change this with your path to MSYS bin directory
   "C:\\cygwin64\\bin;"
   (getenv "PATH")))

(open-init)
(treemacs)
(projectile-global-mode)

