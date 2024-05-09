power(_,0,1):-!.
power(N,P,A):-
	M is P-1,
	power(N,M,A1),
	A is N*A1.

power2(_,0,1):-!.
power2(N,P,A):-
	A is N^P.
