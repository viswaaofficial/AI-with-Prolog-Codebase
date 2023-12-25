:- use_module(library(clpfd)).

binary_number(Bin, N) :-
    binary_number(Bin, 0, N).

binary_number([], N, N).
binary_number([Bit|Bits], Acc, N) :-
    Bit in 0..1,
    Acc1 #= Acc*2 + Bit,
    binary_number(Bits, Acc1, N).

% example query ?- binary_number([1, 0, 1], N).
% example query ?- binary_number(B,10).