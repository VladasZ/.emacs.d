(require 'package)
(let* ((no-ssl (and (memq system-type '(windows-nt ms-dos))
                    (not (gnutls-available-p))))
       (proto (if no-ssl "http" "https")))
  (add-to-list 'package-archives (cons "melpa" (concat proto "://melpa.org/packages/")) t)
 ; (add-to-list 'package-archives (cons "zzmelpa-stable" (concat proto "://stable.melpa.org/packages/")) t)
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
	("a2cde79e4cc8dc9a03e7d9a42fabf8928720d420034b66aecc5b665bbf05d4e9" "c0a7c8590ec62863f8470481c749e993cddfa1d30a0c7f35c81536faaa968cf2" "bd7b7c5df1174796deefce5debc2d976b264585d51852c962362be83932873d9" "5f27195e3f4b85ac50c1e2fac080f0dd6535440891c54fcfa62cdcefedf56b1b" default)))
 '(linum-format " %d " t)
 '(nrepl-message-colors
   (quote
	("#CC9393" "#DFAF8F" "#F0DFAF" "#7F9F7F" "#BFEBBF" "#93E0E3" "#94BFF3" "#DC8CC3")))
 '(package-selected-packages
   (quote
	(swift-mode glsl-mode dumb-jump yaml-mode iedit multiple-cursors ## find-file-in-project super-save levenshtein pt projectile monokai-alt-theme drag-stuff cmake-mode treemacs monokai-theme fsm auto-complete)))
 '(projectile-globally-ignored-directories
   (quote
	(".idea" ".ensime_cache" ".eunit" ".git" ".hg" ".fslckout" "_FOSSIL_" ".bzr" "_darcs" ".tox" ".svn" ".stack-work" "build" "make")))
 '(python-shell-interpreter "python3")
 '(scroll-preserve-screen-position 1)
 '(tab-width 4)
 '(treemacs-ignored-file-predicates
   (quote
	(treemacs--std-ignore-file-predicate is-treemacs-ignored-file)))
 '(treemacs-width 26)
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

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
