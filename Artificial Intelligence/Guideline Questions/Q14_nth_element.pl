nth_element(1,[H|_],H):-!.
nth_element(N,[_|T],X):-
	M is N-1,
	nth_element(M,T,X).
