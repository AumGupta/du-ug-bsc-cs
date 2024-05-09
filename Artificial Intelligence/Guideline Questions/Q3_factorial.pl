factorial(0,1):-!.

factorial(N,F):-
	M is N-1,
	factorial(M,F1),
	F is F1*N.

