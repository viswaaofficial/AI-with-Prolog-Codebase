% Solve a quadratic equation given coefficients A, B, and C.
% It returns two solutions, X1 and X2.

solve_quadratic(A, B, C, X1, X2) :-
    Delta is B*B - 4*A*C,
    Delta >= 0,
    X1 is (-B + sqrt(Delta)) / (2*A),
    X2 is (-B - sqrt(Delta)) / (2*A).

% Query Example:
% ?- solve_quadratic(1, -3, 2, X1, X2).

