f(X,0):-X<3,!.
f(X,2):-X=<X,X<6,!.
f(X,4):-6=<X.

%Max
max(X,Y,Max):-
    X>=Y,!,Max=X
    ;
    Max=Y.

%signle solution membership
member(X,[X|L]):-!.
member(X,[X|L]):- member(X,L).

%adding an element to a list without duplication
add(X,L,L):-member(X,L),!.
add(X,L,[X|L]).


%classification into catigories
beat(tom,jim).
beat(ann,tom).
beat(pat,jim).

class(X,fighter):-
    beat(X,_),
    beat(_,X),!.

class(X,winner):-
    beat(X,_),!.

class(X,sportsman):-
    beat(_,X).

%exercises
%5.1
p(1).
p(2):-!.
p(3).

%5.2
class( Number,positive):-
    Number>0,!.
class(0, zero):- !.
class(Number,negative).

%5.3
split([],[],[]).
split([X|L],[X|L1],L2):-
    X >=0,!,
    split(L,L1,L2).
split([X|L],L1,[X|L2]):-
    split(L,L1,L2).

%negation as a failure
different(X,Y):-
    X=Y,!,fail
    ;
    true.


likes(mary,X):-
    animal(X),
    not(snake(X)).



%exersices
%5.4
member1(Item,Candidates):-
    not(member(Item,RuledOut)).


%5.5
set_difference([],_,[]).
set_difference([X|L1],L2,L) :-
    member(X,L2),!,
    set_difference(L1,L2,L).
set_difference([X|L1],L2,[X|L]):-
    set_difference(L1,L2,L).


%5.6
unifiable1([],_,[]).

unifiable1([First|Rest], Term, List) :-
    not(First = Term), !,
    unifiable1(Rest, Term, List).
unifiable1([First|Rest], Term, [First|List]) :-
    unifiable1(Rest, Term, List).


