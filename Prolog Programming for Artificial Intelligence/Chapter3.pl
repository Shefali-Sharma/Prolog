[ann, tennis, tom, skiing].

myList = .(ann, .(tennis, .(tom, .(skiing, [])))).

List1 = [a, b, c],
List2 = .(a, .(b, .(c, []))).

Hobbies1 = .(tennis, .(music, [])),
Hobbies2 = [skiing, food],
L = [ann, Hobbies1, tom, Hobbies2].

Tail = [b,c].
L = .( a, Tail).

L2 = [a | Tail].

member( X, L).

member( X, [X | Tail]).
member( X, [Head | Tail]) :-
  member( X, Tail).

conc( [], L, L).
conc( L, [], L).
conc([X|L1], L2, [X|L3]) :- 
  conc(L1, L2, L3).
