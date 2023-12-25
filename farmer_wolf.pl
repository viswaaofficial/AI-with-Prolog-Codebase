% State representation: state(Farmer, Wolf, Goat, Cabbage)

% Start the problem and find a solution 
% action(to,from)
start :- 
    action(state(right, right, right, right), state(left, left, left, left)).

% Find a plan of actions from the Start state to the Goal state
action(Start, Goal) :-
    plan(Start, Goal, [Start], Path),
    nl, write('Solution:'), nl,
    write_path(Path).

% Recursive predicate to generate the plan
plan(Goal, Goal, Path, Path).  % The plan is complete when the Goal is reached
plan(Start, Goal, Visited, Path) :-
    go(Start, Next),
    safe(Next),
    \+ member(Next, Visited),  % Ensure the next state has not been visited
    plan(Next, Goal, [Next|Visited], Path).

% Define possible moves
go(state(X, X, G, C), state(Y, Y, G, C)) :- across(X, Y). % Move wolf
go(state(X, W, X, C), state(Y, W, Y, C)) :- across(X, Y). % Move goat
go(state(X, W, G, X), state(Y, W, G, Y)) :- across(X, Y). % Move cabbage
go(state(X, W, G, C), state(Y, W, G, C)) :- across(X, Y). % Move farmer only

% Define the 'across' helper predicate to change banks
across(left, right).
across(right, left).

% Check if a state is safe
safe(state(F, W, G, C)) :-
    % It is safe if the goat is not with the wolf without the farmer
    (F = W; W \= G),
    % It is safe if the goat is not with the cabbage without the farmer
    (F = G; G \= C).

% Write out the path of states
write_path([]).
write_path([H|T]) :-
    write(H), nl,
    write_path(T).

% Start the problem-solving process
:- start.
