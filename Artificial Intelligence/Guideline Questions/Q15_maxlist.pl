max(X,Y,Max):-
	X>=Y,!,
	Max = X ; Max = Y.
maxlist([X],X):-!.
maxlist([H|T],Max):-
	maxlist(T,M),
	max(H,M,Max).
