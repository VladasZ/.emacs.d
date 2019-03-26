(require 'package)
(let* ((no-ssl (and (memq system-type '(windows-nt ms-dos))
                    (not (gnutls-available-p))))
       (proto (if no-ssl "http" "https")))
  (add-to-list 'package-archives (cons "melpa" (concat proto "://melpa.org/packages/")) t)
;  (add-to-list 'package-archives (cons "melpa-stable" (concat proto "://stable.melpa.org/packages/")) t)
  (when (< emacs-major-version 24)
    (add-to-list 'package-archives '("gnu" . (concat proto "://elpa.gnu.org/packages/")))))
(unless package--initialized (package-initialize))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (monokai)))
 '(custom-safe-themes
   (quote
	("bd7b7c5df1174796deefce5debc2d976b264585d51852c962362be83932873d9" "5f27195e3f4b85ac50c1e2fac080f0dd6535440891c54fcfa62cdcefedf56b1b" default)))
 '(linum-format " %d " t)
 '(nrepl-message-colors
   (quote
	("#CC9393" "#DFAF8F" "#F0DFAF" "#7F9F7F" "#BFEBBF" "#93E0E3" "#94BFF3" "#DC8CC3")))
 '(package-selected-packages
   (quote
	(glsl-mode dumb-jump yaml-mode iedit multiple-cursors ## find-file-in-project super-save levenshtein pt projectile monokai-alt-theme drag-stuff cmake-mode treemacs monokai-theme fsm auto-complete)))
 '(projectile-globally-ignored-directories
   (quote
	(".idea" ".ensime_cache" ".eunit" ".git" ".hg" ".fslckout" "_FOSSIL_" ".bzr" "_darcs" ".tox" ".svn" ".stack-work" "build" "make")))
 '(python-shell-interpreter "python3")
 '(scroll-preserve-screen-position 1)
 '(tab-width 4)
 '(treemacs-ignored-file-predicates
   (quote
	(treemacs--std-ignore-file-predicate is-treemacs-ignored-file)))
 '(treemacs-width 22)
 '(truncate-lines nil))

(add-to-list 'load-path "~/.emacs.d/init")

(load "platform")
(load "paths")
(load "utils")
(load "packages")
(load "settings")
(load "build")
(load "shortcuts")
(load "hotkeys")
(load "projects")

(treemacs)
(ai)

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
