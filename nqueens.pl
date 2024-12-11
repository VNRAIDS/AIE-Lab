:- use_module(library(clpfd)).

nqueens(N, Solution) :-
    length(Solution, N),
    Solution ins 1..N,
    safe_queens(Solution),
    label(Solution).

safe_queens([]).
safe_queens([Q|Queens]) :-
    safe_queen(Q, Queens, 1),
    safe_queens(Queens).

safe_queen(_, [], _).
safe_queen(Q, [Q1|Queens], Offset) :-
    Q #\= Q1,
    Q #\= Q1 + Offset,
    Q #\= Q1 - Offset,
    Offset1 #= Offset + 1,
    safe_queen(Q, Queens, Offset1).

%OUTPUT : nqueens(4, Solution).