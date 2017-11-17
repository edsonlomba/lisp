;Verifies if 'a' is a member of a list
(defun find_member(l)
	(cond
		((null l) 0)
		((eql (car l) 'a)(+ 1(find_member (cdr l))))
		(t(find_member (cdr l)))))