q0([a|L1],L2) :- q1(L,L2).
q1([b|L1],[a|L2]) :- q2(L1,L2).
q2([],[]).
q2(L1, [c|L2]) :- q2(L1,L2).
