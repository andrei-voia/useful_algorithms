% This buffer is for notes you don't want to save.
% If you want to create a file, visit that file with C-x C-f,
% then enter the text in that file's own buffer.


% factorial method
factorial(0,1) :- !.
factorial(N,F) :-
N_Prime is N-1,
factorial(N_Prime,F_Prime),
F is F_Prime*N.


% a basic method
a.
b.
c.
goal :-
a,b,0>1, !.
goal :-
c.


% minimum(X,Y,Z) means "Z is the minimum between X and Y"
minimum(X,Y,X) :-
X=<Y, !.
minimum(_,Y,Y).


% absolute value which might be used in the future in future functions
abs(X, X) :- X >= 0, !.
abs(_, Y).


% fibonacci basic
fibonacci(0, 0).
fibonacci(1, 1).
fibonacci(N, F) :-
    N > 0,
    LAST is N-1,
    LAST_LAST is N-2,
    fibonacci(LAST, F_LAST),
    fibonacci(LAST_LAST, F_LAST_LAST),
    F is F_LAST + F_LAST_LAST.


% divisor method
divisor(A, A, A) :- !.
divisor(A, B, C) :-
    A > B,
    Z is A - B,
    divisor(Z, B, C).
divisor(A, B, C) :-
    A < B,
    Z is B - A,
    divisor(A, Z, C).


%this method evaluates a set of variables
evaluating(E, E) :- number(E), !.
evaluating(E1 + E2, Value) :-
    evaluating(E1, V1), evaluating(E2, V2), plus(V1, V2, Value).
evaluating(E1 - E2, Value) :-
    evaluating(E1, V1), evaluating(E2, V2), plus(Value, V2, V1).
