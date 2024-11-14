% Bible example from Sterling & Shapiro 2e
parent(abraham, isaac).
parent(isaac, jacob).
parent(isaac, esau).

ancestor(X,Y) :- parent(X,Y).
ancestor(X,Y) :- parent(X,Z), ancestor(Z,Y).