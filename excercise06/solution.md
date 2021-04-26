# Excercise
####  Ex. 1 Write down the reduction sequence to demonstrate that (((Y t) 1) k) -> k
```
Y = λ f . (λ x . f (x x)) (λ x . f(x x))
t = λ f . λ n1 . λ n2 . if (isZero n1) 0 (add n2 (f (pred n1) n2))
t = Y t (FP Theorem)

(((Y t) 1) k) 
= if (isZero 1) 0 (add k ((Y t) (pred 1) k))
= if (False) 0 (add k ((Y t) 0 k))
= add k ((Y t) 0 k)
= add k (if (isZero 0) 0 (add k ((Y t) (pred 0) k)))
= add k (if (True) 0 (add k ((Y t) (pred 0) k)))
= add k 0 
= k
```

#### Ex. 2
a) Translate the following definition into a non-recursive form:
```
Y = λ f . (λ x . f (x x)) (λ x . f(x x))

append = λ l1 . λ l2 . if (null l1) l2 (cons (head l1) (append (tail l1) l2))
rappend = λ append . λ l1 . λ l2 . if (null l1) l2 (cons (head l1) (append (tail l1) l2))
 
append = Y rappend, as this guarantees rappend append = append by FP Theorem.
->
append = (λ f . (λ x . f (x x)) (λ x . f(x x)))(λ append . λ l1 . λ l2 . if (null l1) l2 (cons (head l1) (append (tail l1) l2)))
```

b) Test your result by appending list L2 to list L1, which are defined below:
```
L1 = cons 1 (cons 2 nil)
L2 = cons 3 nil

append L1 L2
= (Y rappend) L1 L2
= rappend append L1 L2 (NB: fp theorem)
= if (null L1) L2 (cons (head L1) (append (tail L1) L2))
= if (False) L2 (cons (head L1) (append (tail L1) L2))
= (cons (head L1) (append (tail L1) L2))
= (cons 1 (append (tail (cons 2 nil)) L2))
= cons 1 (if (null (cons 2 nil)) L2 (cons (head (cons 2 nil)) (append (tail (cons 2 nil)) L2))
= cons 1 (if (False) L2 (cons 2) (append nil L2))
= cons 1 (cons 2 (append nil L2))
= cons 1 (cons 2 (if (null nil) L2 (cons (head nil) (append (tail nil) L2))
= cons 1 (cons 2 (if True cons 3 nil (...))
= cons 1 (cons 2 (cons 3 nil)) // This is what we would expect, thus the solution from a) seems to do what we expect it to do
```