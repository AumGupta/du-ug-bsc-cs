%MEMBERSHIP
member(X,[X|_]). %X is the Head (acts as base case for recursive rule of membership)
member(X,[_|Tail]):- %X is in the Tail
    member(X,Tail).

%CONCATENATION
conc([],L,L).
conc([X|L1],L2,[X|L3]):-
    conc(L1,L2,L3).

member1(X,L):-
	conc(_,[X|_],L).

%3.1
%(a)
del_last3(L,L2):-
   conc([_,_,_|L2],[_,_,_],L).
   %conc([_,_,_],[L2,_,_,_],L). % Works for len 7 else false.
   %conc([_,_,_],[L2|_,_,_],L). % Syntax error: Unexpected comma or bar in rest of list

%(b)
del_first_last_3(L,L1):-
	conc([_,_,_|L1],[_,_,_],L).
%3.2
%(a)
last(Item,L):-
    conc(_,[Item],L).
%(b)
last(Item,[Item]).
last(Item,[_|Rest]):-
	last(Item,Rest).

%ADDING AN ITEM
add(X,L,[X|L]). %adding Item at starting (Prepend)
append(X,L,L1):- % adding Item at the end.
	conc(L,[X],L1).


%DELETING AN ITEM
del(X,[X|Tail],Tail).
del(X,[Y|Tail],[Y|Tail1]):-
    del(X,Tail,Tail1).

del_last(L,L1):-        % L = initial List, L1 = Output
    conc(L1,[_],L).

del_last2(L,L1):-
	last(Item,L),
	del(Item,L,L1).

del_first_three(L,L1):-
	conc([_,_,_|L1],[],L).

%INSERTING AN ITEM
insert(X,List,BiggerList):-
	del(X,BiggerList,List).

member2(X,L):-
	del(X,L,_).

%SUBLIST
sublist(S,L):-
	conc(_,L2,L),
	conc(S,_,L2).


%PERMUTATION
permutation([],[]).
permutation([X|L],P):-
	permutation(L,L1),
	insert(X,L1,P).

permutation2([],[]).
permutation2(L,[X|P]):-
	del(X,L,L1),
	permutation(L1,P).

len([],0).
len([_|T], Length):-
	len(T, TailLength),
	Length is 1 + TailLength.

%3.3
evenlength(L):-
	len(L,Len),
	Len mod 2 =:= 0.
oddlength(L):-
	len(L,Len),
	Len mod 2 =\= 0.


%3.4
reverse([Item],[Item]).
reverse([Head|Tail], ReversedList):-
	reverse(Tail, L),
	conc(L,[Head],ReversedList).

reverse2([Item],[Item]).
reverse2([Head|Tail], ReversedList):-
	reverse2(Tail, L),
	append(Head,L,ReversedList).

%3.5
palindrome(List):-
	reverse(List,R),
	List = R.

%3.6
shift([Head|Tail], ShiftedList):-
       conc(Tail,[Head],ShiftedList).

%3.7
means(0,zero).
means(1,one).
means(2,two).
means(3,three).
means(4,four).
means(5,five).
means(6,six).
means(7,seven).
means(8,eight).
means(9,nine).

translate([Item],L):-
	means(Item,X),
	L = [X].
translate([Head|Tail], TranslatedList):-
	translate(Tail, L),
	means(Head,X),
	add(X,L,TranslatedList).

%3.8
subset([], []). % Empty List
subset([H|T], [H|T1]):- %Same Heads
  subset(T, T1).
subset([_|Tail], L):- % Only Tail of the first List
  subset(Tail, L).

%3.9
dividelist([Item],[Item],[]).
dividelist([A,B],[A],[B]).
dividelist([A,B,C],[A,B],[C]).
dividelist([H1|[H2|Tail]],List1,List2):-
	dividelist(Tail,L1,L2),
	add(H1,L1,List1),
	add(H2,L2,List2).


%3.11
flatten1(List, FlatList) :-
	flatten1(List, [], FlatList0),
	!,
	FlatList = FlatList0.

% ! means the cut operator,which basically states "if we got up to here,
% don't backtrack."

flatten1([], Tl, Tl) :- !.
flatten1([Hd|Tl], Tail, List) :-
	!,
	flatten1(Hd, FlatHeadTail, List),
	flatten1(Tl, Tail, FlatHeadTail).
flatten1(NonList, Tl, [NonList|Tl]).

%GREATEST COMMON DIVISOR
gcd(X,X,X).
gcd(X,Y,D):-
	X<Y,
        Y1 is Y-X,
	gcd(X,Y1,D).
gcd(X,Y,D):-
	X>Y,
	gcd(Y,X,D).

%LENGTH
len1([],0).
len1([_|Tail], Length):-
	len(Tail, TailLength),
	Length is 1 + TailLength.

%3.14
t(0+1,1+0).
t(X+0+1,X+1+0).
t(X+1+1,Z):-
	t(X+1,X1),
	t(X1+1,Z).

%3.16
max(X,Y,X):- X>=Y.
max(X,Y,Y):- Y>=X.

%3.17
maxList([X],X).
maxList([H|T],Max):-
	maxList(T,M),
	max(H,M,Max).

%3.18
sumList([X],X).
sumList([H|T],Sum):-
	sumList(T,S),
	Sum is H+S.

%3.19
ordered([_]):-!.
ordered([A,B]):-
	A =< B,
	!.
ordered([H|[H1|T]]):-
	ordered(T),
	H =< H1.

%3.20
subSum(Set,Sum,SubSet):-
	subset(Set,SubSet),
	sumList(SubSet,Sum).

%3.21
between1(X, X, X).
between1(N1, N2, X) :-
	N1 < N2,
	NewN1 is N1+1,
	between1(NewN1, N2, X).
