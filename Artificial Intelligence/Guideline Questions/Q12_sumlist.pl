sumList([],0).
sumList([H|T],S):-
	sumList(T,S1),
	S is S1 + H.
