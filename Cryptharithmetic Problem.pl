:- use_module(library(clpfd)).

solve_cryptarithmetic_problem([S,E,N,D] + [M,O,R,E] = [M,O,N,E,Y]) :-
    Vars = [S,E,N,D,M,O,R,Y],
    Vars ins 0..9,
    all_different(Vars),
    S #\= 0,
    M #\= 0,
    1000*S + 100*E + 10*N + D +
    1000*M + 100*O + 10*R + E #=
    10000*M + 1000*O + 100*N + 10*E + Y,
    label(Vars).
	
% Example query
% solve_cryptarithmetic_problem([S,E,N,D] + [M,O,R,E] = [M,O,N,E,Y]).