use_module(library(hiordlib)).
smaller(Comparator, X) :- X < Comparator.
greater(Comparator, X) :- X > Comparator.
% Use: Comparator is the number you want the list elements to compare to, X the list you want to process, Y the list that will contain all smaller elements, Z the list that will contain all greater elements
% example usages:   `split(2, [1,2,3], A, B` -> A = List with all elements < 2, B = List with all elements > 2.
%                   `split(2, [1,2,3], A, _` -> A = List with all elements < 2
%                   `split(2, [1,2,3], _, A` -> A = List with all elements > 2
split(Comparator, X, Y, Z) :- partition(smaller(Comparator), X, Y, B), partition(greater(Comparator), B, Z, _).