cube(N,C):-
    C is N*N*N.

cube:-
    write('Next item, please:'),
    read(X),
    process(X).

process(stop):-!.

process(N):-
    C is N*N*N,
    write('Cube of '), write(N),write(' is '),
    write(C),nl,
    cube.
writelist([]).
writelist([X|L]):-
    write(X),nl,
    writelist(L).

bars([]).
bars([N|L]):-
    stars(N),nl,
    bars(L).

stars(N):-
    N>0,
    write(*),
    N1 is N-1,
    stars(N1).

stars(N):-
    N=<0.

processfile:-
    read(Term),
    process(Term).

process(end_of_file):-!.
process(Term):-
    treat(Term),
    processfile.

%6.10
findterm(Term):-
    read(Term),!,
write(Term)
;
findterm(Term).

%6.11
findallterms(Terms):-
    read(CurrentTerm),
    process(CurrentTerm, Term).
process(end_of_file,_):-!.
process(CurrentTerm,Term):-
    (not(CurrentTerm=Term),!
    ;
    write(CurrentTerm),nl),
    findallterms(Term).





