%define all males 
male(pascal) .
male(marco) .

male(renato) .
male(alois) .
male(ludwig) .

%define all females
female(yyy) .

female(cordula) .

female(cecile) .
female(anna) .

%define parent relationship young to medium generation
parent(renato, pascal) .
parent(renato, marco) .
parent(renato, yyy) .
parent(cordula, pascal) .
parent(cordula, marco) .
parent(cordula, yyy) .

%define parent relationship medium to old generation
parent(cecile, cordula) .
parent(ludwig, cordula) .
parent(anna, renato) .
parent(alois, renato) .

%define requested rules
grandparent(X, Y) :- parent(X, Z), parent(Z, Y) .
grandfather(X, Y) :- grandparent(X, Y), male(X) .
grandmother(X, Y) :- grandparent(X, Y), female(X) .

grandchild(X, Y) :- grandparent(Y, X) .
grandson(X, Y) :- grandchild(X, Y), male(X) .
granddaughter(X, Y) :- grandchild(X, Y), female(X) .





