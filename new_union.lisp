;Verifies if an element is a member of a list
(defun is_member(x l)
	(cond
		((null l) nil)
		((eql x (car l)))
		(t(is_member x (cdr l)))))

;removes an element of a list
(defun remove_value(x l)
	(cond
		((null l) nil)
		((eql x (car l))(remove_value x (cdr l)))
		(t(cons (car l)(remove_value x (cdr l))))))

;makes the union between 2 lists
(defun new_union (l1 l2)
  (cond ((null l1) l2)
        ((null l2) l1)
        ((is_member (car l1) l2)(cons (car l)(new-union (cdr l) (remove_value (car l1) l2))))
        (t(cons (car l1) (new-union (cdr l1) l2)))))