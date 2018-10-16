
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

