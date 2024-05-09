gcd(0,A,A):-!.
gcd(A,0,A):-!.

gcd(A,B,G):-
	R is mod(A,B),
	gcd(B,R,G).
