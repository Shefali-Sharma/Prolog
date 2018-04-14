parent( pam, bob).
parent( tom, bob).
parent( tom, liz).
parent( bob, ann).
parent( bob, pat).
parent( pat, jim).
parent( liz, pat).

male( tom).
male( bob).
male( jim).
female( liz).
female( pat).
female( ann).
female( pam).

offspring(X, Y) :- parent(Y, X).

mother( X, Y) :-
  parent( X, Y),
  female( X).


grandparent(X, Y) :-
  parent(X, Z),
  parent(Z, Y).

sister(X, Y) :-
  parent(Z, Y),
  parent(Z, X),
  female(X).

  happy(X) :-
    parent(X, Y).

hastwochildren(X) :-
  parent(X, Y),
  sister(Y, Z).

grandchild(X, Y) :-
  parent(Y, Z),
  parent(Z, X).

predecessor(X, Z) :-
  parent(X, Z).
predecessor(X, Z) :-
  parent(X, Y),
  predecessor( Y, Z).
