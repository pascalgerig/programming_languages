# General Notes
Working on linux i use ghci to load the files, e.g.
```haskell
:load catalan.hs
firstNCatalan 10
```

# Excercise
#### Explain why the following piece of code does not raise an error.
In functional programming we have lazy evaluation, meaning an expression is only evaluated if it absolutely has to be evaluated i.o to be able to continue the execution.
The programm defines `func1 y z = y` which is used for the call in the last line. thus `z` which is `sqrt(-5)` is not needed for the calculation, thus `sqrt(-5)` is never evaluated which means that there is no error thrown since the program does not realize that there is an error.

#### Define the following small program in three different functions with pattern matching, guards, andlambda expression.
See `threeWays.hs`

#### Define a function that accepts a list as an argument and returns the sum of all the members of thegiven list.
see `listSum.hs`

#### Define a functionfirstNCatalan nin Haskell that calculates and returns the result as a listcontaining the first n Catalan numbers.
see `catalan.hs`
