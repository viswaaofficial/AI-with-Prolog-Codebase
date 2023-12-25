solve_cryptarithmetic_problem([T,W,O] + [T,W,O] + [T,H,R,E,E] = [S,E,V,E,N]) :-
    Vars = [T,W,O,H,R,E,S,V,N],
    Vars ins 0..9,
    all_different(Vars),
    T #\= 0,
    S #\= 0,
    
    100*T + 10*W + O +
    100*T + 10*W + O +
    10000*T + 1000*H + 100*R + 10*E + E #=

    10000*S + 1000*E + 100*V + 10*E + N,
    
    label(Vars).

% Example query
% solve_cryptarithmetic_problem([T,W,O] + [T,W,O] + [T,H,R,E,E] = [S,E,V,E,N]).
