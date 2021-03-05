# General Notes
Working on linux i convert ps to pdf using ps2pdf, e.g. `ps2pdf -sPAPERSIZE=a4 -dOptimize=true -dEmbedAllFonts=true example.ps` creates `example.pdf` from `example.ps`.
This script should be included in most linux distributions.

# Excercise 1
#### What kinds of stacks does PostScript manage and what are their roles?
* Operand stack: holds operands and results of operators
* Dictionary stack: holds dictonaries (a set of key, value pairs), where dictonary variables are overwritten by higher level dictionaries, but lower level key, value pairs can still be accessed unless overwritten.
* Execution stack: holds executable objects like procedures in their stage of exectution
* Graphics state stack: keeps track of graphical state, e.g. current coordinates.

#### What is the way of defining a procedure in the PostScript program? please also define a procedure to calculate the following formula and print the result on the screen : (( x + y ) / 2) * 2
A procedure is defined with the following scheme:
```ps
/name { content of procedure } def
```
essentially, a name and a procedure are pushed onto the stack, then def takes the two and creates a procedure with given name.

Procedure for given formula, see `formula_procedure.ps`

#### Define a procedure to print 10 random numbers (using loops) and each number must be printed in a new line. hint: `rand` produces random number
see `random_numbers.ps`

# Excercise 2
see `catalan.ps`
