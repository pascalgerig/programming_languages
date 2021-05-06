# Excercise
####  Ex. 1 Extend the abstract syntax and the semantic functions P, S and E in order to include the possibility of subtraction and division
abstract syntax:
```
Prog::='ON' Stmt
Stmt::=  Expr 'TOTAL' Stmt
        |   Expr 'TOTAL' 'OFF'
Expr::=  Expr1 '+' Expr2
        |   Expr1 '*' Expr2
        |   'IF' Expr1 ',' Expr2 ',' Expr3
        |   'LASTANSWER'
        |   '(' Expr ')'
        |   Num
        |   Expr1 '-' Expr2
        |   Expr1 '/' Expr2
```

semantic functions:
```
P : Program → Int*
P⟦ ON S ⟧   =    S⟦ S ⟧ (0)

S : ExprSequence → Int → Int*
S⟦ E TOTAL S ⟧ (n)  =   let n' = E⟦ E ⟧ (n) in 
                        cons(n', S⟦ S ⟧ (n'))
S⟦ E TOTAL OFF ⟧ (n)=   [ E⟦ E ⟧ (n) ]

E : Expression → Int → Int
E⟦ E1 + E2 ⟧ (n)            =   E⟦ E1 ⟧ (n) + E⟦ E2 ⟧ (n)
E⟦ E1 * E2 ⟧ (n)            =   E⟦ E1 ⟧ (n) × E⟦ E2 ⟧ (n)
E⟦ IF E1 , E2 , E3 ⟧ (n)    =   if E⟦ E1 ⟧ (n) = 0
                                then E⟦ E2 ⟧ (n)
                                else E⟦ E3 ⟧ (n)
E⟦ LASTANSWER ⟧ (n)         =   n
E⟦ ( E ) ⟧ (n)              =   E⟦ E ⟧ (n)
E⟦ N ⟧ (n)                  =   N

E⟦ E1 - E2 ⟧ (n)            =   E⟦ E1 ⟧ (n) - E⟦ E2 ⟧ (n)
E⟦ E1 / E2 ⟧ (n)            =   if E⟦ E2 ⟧ (n) = 0
                                then "NOT A NUMBER"
                                else E⟦ E1 ⟧ (n) / E⟦ E2 ⟧ (n)
```

#### Ex. 2
Consider a language of binary numbers. The number ’111’ is intended to denote the natural number 7. Define the syntax, the semantic functions and the domain of this language. As a test evaluate’10100’.

abstr. syntax
```
Prog    ::= B
B       ::= BD | D
```

domain
```
D       ::= 0 | 1
```

semantic functions
```
P: Prog -> Int
P ⟦ B ⟧ =   BIN ⟦ B ⟧

BIN: B -> Int
BIN ⟦ BD ⟧  = (BIN ⟦ B ⟧ * 2) + D
BIN ⟦ D ⟧   = D
```

Test `10100`:
```
BIN ⟦ 10100 ⟧ 
= BIN ⟦ 1010 ⟧ * 2
= BIN ⟦ 101 ⟧ * 2 * 2
= ((BIN ⟦ 10 ⟧ * 2) + 1) * 2 * 2
= ((((BIN ⟦ 1 ⟧ * 2)) * 2) + 1) * 2 * 2
= ((((1 * 2)) * 2) + 1) * 2 * 2
= (4 + 1) * 4
= 20
```