in_room(bananas).
in_room(chair).
in_room(monkey).

clever(monkey).
tall(chair).
can_climb(monkey, chair).

can_move(monkey, chair, bananas) :-
    in_room(monkey),
    in_room(chair),
    in_room(bananas).

close(X, bananas) :-
    can_move(X, chair, bananas),
    get_on(X, chair).

get_on(X, Y) :-
    can_climb(X, Y).

can_reach(X, bananas) :-
    clever(X),
    close(X, bananas).

% OUTPUT :  ?- can_reach(monkey, bananas).