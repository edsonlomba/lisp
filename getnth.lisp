;Gets the nth element of a list
(defun getnth(x lista)
	(cond
		((null lista) nil)
		((eql x 0) (car lista))
		(t (setq  x  (-  x  1))(getnth x (cdr lista)))))