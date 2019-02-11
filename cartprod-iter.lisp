;Cartesian Product Iterator

(defun cartprod-iter (a b)
    (let* ((a (coerce a 'list))
           (b (coerce b 'list))
           (b-copy b))
          (lambda ()
              (when (car a)
                  (if (not (car b))(setq b b-copy))
                  (if (cdr b)
                      (list (car a)(pop b))
                      (list (pop a)(pop b)))))))
