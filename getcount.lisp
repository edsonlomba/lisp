;Counts how many times an element appear in a list
(defun getcount(x lista)
	(cond
		((null lista) 0)
		((eql x (car lista))(+ 1 (getcount x ( cdr lista))))
		(t(getcount x (cdr lista)))))