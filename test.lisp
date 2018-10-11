
(defun print (number)
  (message "%d" number))

(defun bool-string (bool) (if bool "True" "False"))

(defun bool-message (bool) (message (bool-string bool)))

(defun len (list)
  (if list
      (+ 1 (len (cdr list)))
      0))

(defun print-list (list)
  (when list
    (message (car list))
    (print-list (cdr list))))

(defun cond-crogol (number)
  (cond
    ((eq number 3) "triaglok")
    ((eq number 4) "sopokok")
    ((eq number 5) "petihatko")
    (t "repiluglem!")))

(defun listolko (list)
  (if (listp list)
    (message "uu lestolkovenije!")
    (message "uu gaunoo((")))

(defun buffers-name-list ()
  (mapcar (function buffer-name) (buffer-list)))

(defun buffers-file-list ()
  (mapcar (function buffer-file-name) (buffer-list)))


(message (find-file-in-parent-dirs "test.lisp"))

(message (if (file-exists-p "~/.emacs.d/../.emacs.d/test.lisp")
			 "uroborrooss!"
		   "fuu"))

(setq test-string "1234567.gsdfg")

(setq treemacs-ignored-types '("vcd" "out" "asc"))
(setq treemacs-ignored-folders '("elpa"))


(setq extension (file-name-extension test-string))

(message (concat "Extension: " extension))


(bool-message (member "vcd" treemacs-ignored-types))

  
(defun is-treemacs-ignored-file (file)
  (setq extension (file-name-extension file))
  (if (is-empty-string extension)
	  (string-match treemacs-ignored-folders file)
	  (member (file-name-extension file) treemacs-ignored-types)))

(bool-message (is-treemacs-ignored-type "fsdfds.ac"))
  
