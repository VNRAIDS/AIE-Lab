mean(List, Mean) :-
    sum_list(List, Sum),
    length(List, N),
    Mean is Sum / N.

linear_regression(Xs, Ys, A, B) :-
    mean(Xs, MX),
    mean(Ys, MY),
    sum_products(Xs, Ys, SP),
    sum_squares(Xs, SSX),
    sum_list(Xs, SX),
    sum_list(Ys, SY),
    length(Xs, N),
    % Correct formula for Slope (A) and Intercept (B)
    A is (N * SP - SX * SY) / (N * SSX - SX * SX),
    B is MY - A * MX.

sum_products([], [], 0).
sum_products([X|Xs], [Y|Ys], S) :-
    sum_products(Xs, Ys, R),
    S is X * Y + R.

sum_squares([], 0).
sum_squares([X|Xs], S) :-
    sum_squares(Xs, R),
    S is X * X + R.

%?- linear_regression([1, 2, 3], [2, 4, 6], A, B).
