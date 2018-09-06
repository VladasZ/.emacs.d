(require 'package)
(let* ((no-ssl (and (memq system-type '(windows-nt ms-dos))
                    (not (gnutls-available-p))))
       (proto (if no-ssl "http" "https")))
  (add-to-list 'package-archives (cons "melpa-stable" (concat proto "://stable.melpa.org/packages/")) t)
  (when (< emacs-major-version 24)
    (add-to-list 'package-archives '("gnu" . (concat proto "://elpa.gnu.org/packages/")))))
(package-initialize)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (monokai)))
 '(custom-safe-themes
   (quote
	("5f27195e3f4b85ac50c1e2fac080f0dd6535440891c54fcfa62cdcefedf56b1b" default)))
 '(linum-format "%d " t)
 '(nrepl-message-colors
   (quote
	("#CC9393" "#DFAF8F" "#F0DFAF" "#7F9F7F" "#BFEBBF" "#93E0E3" "#94BFF3" "#DC8CC3")))
 '(package-selected-packages
   (quote
	(cmake-mode treemacs restart-emacs monokai-theme fsm color-theme-sanityinc-tomorrow auto-complete)))
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
(add-to-list 'default-frame-alist '(height . 40))

(set-face-attribute 'default nil
                    :family  "Droid Sans Mono"
                    :height  140)

(setq linum-format "%d ")
(setq ring-bell-function 'ignore)
(tool-bar-mode -1)

(add-to-list 'load-path "~/.emacs.d/init")

(load "paths")
(load "utils")
(load "packages")
(load "shortcuts")
(load "auto-modes")
(load "hotkeys")

(al)
(treemacs)

