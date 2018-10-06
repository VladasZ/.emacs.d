
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

(defun build-project ()
  (interactive)
  (shell-command "python ~/.emacs.d/utils/Build.py"))


;; Run python and pop-up its shell.
;; Kill process to solve the reload modules problem.
(defun my-python-shell-run ()
  (interactive)
  (when (get-buffer-process "*Python*")
     (set-process-query-on-exit-flag (get-buffer-process "*Python*") nil)
     (kill-process (get-buffer-process "*Python*"))
     (kill-buffer "*Python*")
     (sleep-for 0.5))
  (run-python (python-shell-parse-command) nil nil)
  (python-shell-send-buffer)
  ;; Pop new window only if shell isnt visible
  ;; in any frame.
  (unless (get-buffer-window "*Python*" t) 
    (python-shell-switch-to-shell))

  (sleep-for 0.5)
  (shrink-window-if-larger-than-buffer)
  )

(defun my-python-shell-run-region ()
  (interactive)
  (python-shell-send-region (region-beginning) (region-end))
  (python-shell-switch-to-shell))

;; (eval-after-load "python"
;;   '(progn
;;      (define-key python-mode-map (kbd "C-c C-c") 'my-python-shell-run)
;;      (define-key python-mode-map (kbd "C-c C-r") 'my-python-shell-run-region)
;;      (define-key python-mode-map (kbd "C-h f") 'python-eldoc-at-point)))

(defun duplicate-line (arg)
  "Duplicate current line, leaving point in lower line."
  (interactive "*p")

  ;; save the point for undo
  (setq buffer-undo-list (cons (point) buffer-undo-list))

  ;; local variables for start and end of line
  (let ((bol (save-excursion (beginning-of-line) (point)))
        eol)
    (save-excursion

      ;; don't use forward-line for this, because you would have
      ;; to check whether you are at the end of the buffer
      (end-of-line)
      (setq eol (point))

      ;; store the line and disable the recording of undo information
      (let ((line (buffer-substring bol eol))
            (buffer-undo-list t)
            (count arg))
        ;; insert the line arg times
        (while (> count 0)
          (newline)         ;; because there is no newline in 'line'
          (insert line)
          (setq count (1- count)))
        )

      ;; create the undo information
      (setq buffer-undo-list (cons (cons eol (point)) buffer-undo-list)))
    ) ; end-of-let

  ;; put the point in the lowest line and return
  (next-line arg))
