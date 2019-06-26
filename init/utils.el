
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

(require 'cl)
(defun force-kill-buffers (regexp)
  "Kill buffers matching regexpr without asking for confirmation."
  (interactive "sKill buffers matching: ")
  (cl-flet ((kill-buffer-ask (buffer) (kill-buffer buffer)))
	(kill-matching-buffers regexp t t)))

(defun replace-in-string (what with in)
  (replace-regexp-in-string (regexp-quote what) with in nil 'literal))

(defun add-to-path (value)
  (setenv "PATH"
		  (concat value ":" (getenv "PATH"))))

(defun add-to-python-path (value)
  (setenv "PYTHONPATH"
		  (concat value ":" (getenv "PYTHONPATH"))))

(defun expand-home-path (path)
  (replace-in-string "~/" (concat (getenv "HOME") "/") path))

(defun string-is-empty (string)
  (or (null string)
	  (zerop (length string))))

(defun my-scroll-down ()
  (interactive)
  (scroll-down scroll-lines-count))

(defun my-scroll-up ()
  (interactive)
  (scroll-up scroll-lines-count))

(defun save-and-switch-to-next-buffer ()
  (interactive)
  (save-buffer)
  (switch-to-next-buffer))

(defun save-and-switch-to-prev-buffer ()
  (interactive)
  (save-buffer)
  (switch-to-prev-buffer))

(defun sinfo ()
  (interactive)
  (async-shell-command "~/.emacs.d/utils/Info.py"))

(defun string-contains (str part)
  (string-match-p (regexp-quote part) str))
