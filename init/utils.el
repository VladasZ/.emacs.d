
(defun package-installed (pack)
  (require pack nil 'noerror))

(defun check-package (package)
  (if (not (package-installed package))
      (package-install package)))

(defun replace-in-string (in what with)
  (replace-regexp-in-string (regexp-quote what) with in nil 'literal))

(defun replaced-path-shell-command (command)
  (interactive "Shell command:")
  (shell-command command))

(defun prepare-build-project ()
  (interactive)
  (async-shell-command "python3 ~/.emacs.d/utils/Build.py"))

(defun make-project ()
  (interactive)
  (save-buffer)
  (async-shell-command "python3 ~/.emacs.d/utils/Build.py --make"))

(require 'cl)
(defun bk-kill-buffers (regexp)
  "Kill buffers matching REGEXP without asking for confirmation."
  (interactive "sKill buffers matching this regular expression: ")
  (cl-flet ((kill-buffer-ask (buffer) (kill-buffer buffer)))
    (kill-matching-buffers regexp t t)))

(defun run-python-script ()
  (interactive)
  (message  (buffer-file-name (current-buffer)))
  (save-buffer)
  (bk-kill-buffers "Async Shell Command")
  (async-shell-command (concat "python3 " (buffer-file-name (current-buffer))))
  (enlarge-window)
  (enlarge-window)
  (enlarge-window)
  (enlarge-window)
  (enlarge-window)
  (enlarge-window)
  )

(defun duplicate-line (arg)
  "Duplicate current line, leaving point in lower line."
  (interactive "*p")
  (setq buffer-undo-list (cons (point) buffer-undo-list))
  (let ((bol (save-excursion (beginning-of-line) (point))) eol)
    (save-excursion
      (end-of-line)
      (setq eol (point))
      (let ((line (buffer-substring bol eol))
            (buffer-undo-list t)
            (count arg))
        (while (> count 0)
          (newline)
          (insert line)
          (setq count (1- count))))
      (setq buffer-undo-list (cons (cons eol (point)) buffer-undo-list))))
  (next-line arg))


(defun find-file-in-parent-dirs (file-name)
  (interactive)
  (if (file-exists-p (concat "./" file-name))
	  (concat "./" file-name)
	(find-file-in-parent-dirs (concat "../" file-name))))

(message (find-file-in-parent-dirs "build.py"))
