% Facts about family relationships
parent(john, mary).      % John is a parent of Mary
parent(mary, susan).     % Mary is a parent of Susan
parent(john, mike).      % John is a parent of Mike
parent(susan, alice).    % Susan is a parent of Alice

male(john).
male(mike).
female(mary).
female(susan).
female(alice).

% Define a rule for grandparent
grandparent(X, Y) :-
    parent(X, Z),
    parent(Z, Y).

% Define a rule for sibling
sibling(X, Y) :-
    parent(P, X),
    parent(P, Y),
    X \= Y.