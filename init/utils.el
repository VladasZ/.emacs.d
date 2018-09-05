
(defun package-installed (pack)
  (require pack nil 'noerror))

(defun check-package (package)
  (if (not (package-installed package))
      (package-install package)))



