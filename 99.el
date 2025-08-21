;; 01 - Imperative
(defun my-last(lst)
  (while (not (= (length lst) 1))
    (setq lst (cdr lst)))
  lst)

;; 01 - Recursive
(defun my-last (lst)
  (cond))

;; 02 - Imperative
(defun my-but-last(lst)
    (while (not (= (length lst) 2))
      (setq lst (cdr lst)))
  lst)

;; 03 - Imperative
(defun element-at(lst num)
  (dotimes (i (- num 1))
    (setq lst (cdr lst)))
  (car lst))

;; 04 - W/O using length, imperative
(defun my-length(lst)
  (setq len 0)
  (while lst
    (setq lst (cdr lst))
    (setq len (+ len 1)))
  len)

;; 05 - Recursive
(defun my-reverse (lst &optional reverse)
  (cond ((not (listp lst)) nil)
	((eq lst nil) reverse)
	(t (my-reverse (cdr lst) (cons (car lst) reverse)))))

;; 06 - Using reverse!
(defun my-is-palindrome (lst)
  (equal (reverse lst) lst))

;; 07 - Flatten a nested list structure!
(defun my-flatten (lst)
  (cond ((eq lst nil) nil)
	((listp (car lst))
	 (append (my-flatten (car lst)) (my-flatten (cdr lst))))
	(t (cons (car lst) (my-flatten (cdr lst))))))	    

;; 08 - Compress a list structure!
(defun my-compress (lst)
  (cond ((eq (car (cdr lst)) nil) lst)
	((= (car lst) (car (cdr lst))) (my-compress (cdr lst)))
	(t (cons (car lst) (my-compress (cdr lst))))))



