
date(D,M,Y).

point(X, Y).
point(X, Y, Z).

seg(point(A, B), point(C, D)).

triangle(point(A,B), point(C, D), point(E,F)).

vertical( seg( point(X, Y), point(X, Y1))).
horizontal( seg( point(X, Y), point(X1, Y))).

rectangle(point(A,B), point(C, B), point(A,F), point(C,F)).

f(1, one).
f(s(1), two).
f(s(s(1)), three).
f(s(s(s(X))), N) :-
  f(X, N).

parent(X, Y).

predecessor(X, Y) :-
  parent(X, Y).
predecessor(X, Y) :-
  parent(X, Z),
  predecessor(Z, Y).

relatives(X, Y) :-
  predecessor(X, Y);
  predecessor(Y, X);
  predecessor(Z, X),
  predecessor(Z, Y);
  predecessor(X, Z),
  predecessor(Y, Z).


translate(Number, Word) :-
  Number = 1, Word = one.

translate(Number, Word) :-
  Number = 2, Word = two.

translate(Number, Word) :-
  Number = 3, Word = three.

big( bear).
big( elephant).
smal( cat).

brown( bear).
black( cat).
gray( elephant).

dark( Z) :- black( Z).
dark( Z) :- brown( Z).

state(atdoor, onfloor, atwindow, hasnot).
state(middle, onbox, middle, hasnot).
state(middle, onbox, middle, has).

move( state(middle, onbox, middle, hasnot),
      grasp,
      state(middle, onbox, middle, has)).

move( state(P, onfloor, P, H),
      climb,
      state(P, onbox, P, H)).

move( state(P1, onfloor, P1, H),
      push(P1, P2),
      state(P2, onfloor, P2, H)).

move( state(P1, onfloor, B, H),
      walk( P1, P2),
      state(P2, onfloor, B, H)).

canget(state(_, _, _, has)).

canget( S1) :-
  move( S1, M, S2),
  canget( S2).

X = f(X).
