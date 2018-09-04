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
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(custom-enabled-themes '(misterioso))
 '(default-frame-alist '((height . 80) (width . 160)))
 '(package-selected-packages
   '(auto-complete slime use-package flycheck-rtags flycheck cmake-ide))
 '(truncate-lines nil))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "#2d3743" :foreground "#e1e1e0" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 160 :width normal :foundry "nil" :family "Menlo")))))

(defcustom al-path "~/.emacs.d/init.el"
   "init.el file path."
   :group 'paths
   :type 'directory
)

(defun al ()
  "Open init.el file"
  (interactive)
  (find-file al-path))

(defalias 'inst 'package-install)
(defalias 'var  'customize-variable)
(defalias 'eb   'eval-buffer)

(add-to-list 'load-path "~/.emacs.d/packages/dired-sidebar")
(add-to-list 'load-path "~/.emacs.d/packages/dired-hacks")
(require 'dired-sidebar)
