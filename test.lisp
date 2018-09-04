
(defun print (number)
  (message "%d" number))

(defun len (list)
  (if list
      (+ 1 (len (cdr list)))
      0))

(defun print-list (list)
  (when list
    (print (car list))
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

(message "hello")

(print (len (cdr '(1))))


(print-list '(1 2 3 4 5))


(defun hello ()
    (message "hello"))

(message (cond-crogol 3))
(message (cond-crogol 4))
(message (cond-crogol 5))
(message (cond-crogol 6))


(listolko '(3))
(listolko 4)

  

