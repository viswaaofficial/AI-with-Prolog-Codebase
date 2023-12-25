% Equation solver for ax + b = c
% solve_equation(A, B, C, Solution)
% A, B, C are coefficients and constant terms, Solution is the value of x

solve_equation(A, B, C, X) :-
    A \= 0,
    X is (C - B) / A.

% Example query to solve the equation 2x + 3 = 7
% ?- solve_equation(2, 3, 7, X).