tsp(Points, Path, Distance) :-
    permutation(Points, Path),
    valid_path(Path),
    calculate_distance(Path, Distance).

valid_path([]).
valid_path([A, B | Rest]) :-
    edge(A, B, _),
    valid_path([B | Rest]).

calculate_distance([], 0).
calculate_distance([A, B | Rest], Distance) :-
    edge(A, B, D),
    calculate_distance([B | Rest], RestDist),
    Distance is D + RestDist.

edge(a, b, 1).
edge(b, c, 2).
edge(c, d, 3).
edge(d, a, 4).

%?- tsp([a, b, c, d], Path, Distance).
