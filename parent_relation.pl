% This buffer is for notes you don't want to save.
% If you want to create a file, visit that file with C-x C-f,
% then enter the text in that file's own buffer.


child(matthew).
child(john).
child(michael).
child(thomas).


lovesToPlay(X) :- child(X).


father(mike,john).
father(jack,bob).
father(mike,paul).
father(andy,mike).
father(andy,jack).
grandfather(X,Y) :- father(X,Z),father(Z,Y).


child(X, Y) :- father(Y, X).


brother(X, Y) :-
    father(Z, X),
    father(Z, Y),
    not(X = Y).


predecessor(X, Y) :- father(X, Y).
predecessor(X, Y) :-
    father(Z, Y),
    predecessor(X, Z).

