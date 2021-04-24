;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname |bubble sort|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
(define (bubble-sort x gt?)
  (letrec
    ((fix (lambda (f i)
       (if (equal? i (f i))
           i
           (fix f (f i)))))
 
     (sort-step (lambda (l)
        (if (or (null? l) (null? (cdr l)))
            l
            (if (gt? (car l) (cadr l))
                (cons (cadr l) (sort-step (cons (car l) (cddr l))))
                (cons (car  l) (sort-step (cdr l))))))))
 
  (fix sort-step x)))

