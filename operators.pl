% Arithmetic predicates
sum(X, Y, Z) :- Z is X + Y.
product(X, Y, Z) :- Z is X * Y.
difference(X, Y, Z) :- Z is X - Y.
quotient(X, Y, Z) :- Z is X / Y.

% Logical operation examples
and_example(A, B) :- A, B.
or_example(A, B) :- A ; B.
not_example(A) :- \+ A.

% Custom list concatenation operator
:- op(500, xfy, ++).
List1 ++ List2 :- append(List1, List2, Result), write(Result).
