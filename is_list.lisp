;Verifies if an element of a list is a list
(defun is_list (x)
	(cond
		((null x) nil)
		((listp (car x))t)
		(t(islist (cdr x)))))