% Define the predicate to solve Towers of Hanoi
hanoi(N) :- move(N, left, center, right).

move(0, _, _, _) :- !.  % The cut (!) prevents backtracking past this point.
move(N, A, B, C) :-
    M is N - 1,
    move(M, A, C, B),
    format('Move disk ~w from ~w to ~w~n', [N, A, C]),
    move(M, B, A, C).

% Example query to solve Towers of Hanoi with 3 disks
?- hanoi(5).
