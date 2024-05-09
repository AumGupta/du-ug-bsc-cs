merge(L,[],L):-!.
merge([],L,L):-!.
merge([H1|T1],[H2|T2],R):-
	H1<H2,!,
	R = [H1|T],
	merge(T1,[H2|T2],T);
	R = [H2|T],
	merge([H1|T1],T2,T).
