conc([],L,L).
conc([H|L1],L2,[H|L3]):-
	conc(L1,L2,L3).

reverse([],[]):-!.
reverse([H|T],R):-
	reverse(T,L),
	conc(L,[H],R).
