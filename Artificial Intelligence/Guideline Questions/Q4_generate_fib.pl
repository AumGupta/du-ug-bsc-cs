generate_fib(1,0):-!.
generate_fib(2,1):-!.
generate_fib(N,T):-
	N1 is N-1,
	N2 is N1-1,
	generate_fib(N1,T1),
	generate_fib(N2,T2),
	T is T1+T2.
