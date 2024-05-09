insert_nth(I,1,L,[I|L]):-!.
insert_nth(I,N,[H|T],[H|R]):-
	M is N-1,
	insert_nth(I,M,T,R).
