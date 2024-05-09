delete_nth(1,[_|L],L):-!.
delete_nth(N,[H|L],[H|R]):-
	M is N-1,
	delete_nth(M,L,R).
