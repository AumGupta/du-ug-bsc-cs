len([],0).
len([_|T],L):-
	len(T,L1),
	L is L1+1.

evenlength(L):-
	len(L,Len),
	mod(Len,2)=:=0.

oddlength(L):-
	len(L,Len),
	mod(Len,2)=\=0.
