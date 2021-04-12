# Excercise
####   Consider the following λ-expressions. Indicate which occurrences of variables are bound and which ones are free in the expressions.
Notation: e.g. `x [free as never bound]` the text inside `[]` indicates wether the variable in front of the brackets is bound or free
```
(λx . x [x is bound by previous λx]) 
y [free] 
(λy . y [y is bound by previous λy] x [free])
x [free]
```

```
((λx .λy .λz . x y z [x, y and z are all bound by the previous three lambdas.] )
 (λx.  y [free] x [bound by previous λx]) 
 y [free]) 
 (λx . z [free] x [bound by previous λx])
```

```
λy . 
    (λx . z [free](x[bound by previous λx](
        λx . y [bound by first λy](z[free])))) 
    (λz . y[bound by first λy](x[free (notice that the previous λx is closed by a bracket previously](z[bound by previous λz])))
```

#### If possible, reduce the following λ-expressions to their normal form.
```
(λx.  (λz .  z y) x )(λx .  x)
= (β reduction)
(λz .  z y)(λx .  x)
= (β reduction)
(λx. x) y
= (β reduction)
y
```

```
(λx.  x x y)(λx .  x x y)
= (β reduction)
(λx .  x x y) (λx .  x x y) y
= (β reduction (Notice that "Application is left-associative" - Slide 12))
(λx .  x x y) (λx .  x x y) y y
= (β reduction)
(λx .  x x y) (λx .  x x y) y y y
= (β reduction)
... (This will never terminate, thus there is no normal form)
```

```
P ≡ (λx . x (x y)) I where I ≡ λu . u
=
(λx . x (x y)) (λu . u)
= (β reduction)
(λu . u) ((λu . u) y)
= (β reduction)
(λu . u) y
= (β reduction)
y
```