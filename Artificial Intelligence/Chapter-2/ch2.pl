point(X,Y):-
    integer(X),
    integer(Y).

seg((X1,Y1),(X2,Y2)):-
    point(X1,Y1),
    point(X2,Y2),
    Y1 \= Y2 | X1 \= X2.
seg(point(X1,Y1), point(X2,Y2)):-
    Y1 \= Y2 | X1 \= X2.

horizontal(seg(point(X,Y),point(X1,Y))):-
    X\=X1.
horizontal((X1,Y),(X2,Y)):-
    point(X1,Y),
    point(X2,Y),
    X1\=X2.

vertical(seg(point(X,Y),point(X,Y1))):-
    Y\=Y1.
vertical((X,Y1),(X,Y2)):-
    point(X,Y1),
    point(X,Y2),
    Y1\=Y2.


triangle((X1,Y1),(X2,Y2),(X3,Y3)):-
    point(X1,Y1),
    point(X2,Y2),
    point(X3,Y3),
    Area is 0.5*abs(X1*(Y2-Y3)+X2*(Y3-Y1)+X3*(Y1-Y2)),
    Area > 0.
triangle(point(X1,Y1),point(X2,Y2),point(X3,Y3)):-
    0.5*abs(X1*(Y2-Y3)+X2*(Y3-Y1)+X3*(Y1-Y2)) > 0.

rectangle((X1,Y1),(X2,Y2),(X3,Y3),(X4,Y4)):- % co-ordinates starting from top-left.
    point(X1,Y1),
    point(X2,Y2),
    point(X3,Y3),
    point(X4,Y4),
    horizontal((X1,Y1),(X2,Y2)),
    vertical((X2,Y2),(X3,Y3)),
    horizontal((X3,Y3),(X4,Y4)),
    vertical((X4,Y4),(X1,Y1)).
rectangle(point(X1,Y1),point(X2,Y2),point(X3,Y3),point(X4,Y4)):-
    horizontal((X1,Y1),(X2,Y2)),
    vertical((X2,Y2),(X3,Y3)),
    horizontal((X3,Y3),(X4,Y4)),
    vertical((X4,Y4),(X1,Y1)).

square((X1,Y1),(X2,Y2),(X3,Y3),(X4,Y4)):-
    rectangle((X1,Y1),(X2,Y2),(X3,Y3),(X4,Y4)),
    X2-X1 =  Y2-Y3.  % comparing length of two adjacent sides

regular(square(_,_,_,_)).

circle((X,Y),R):-
    point(X,Y),
    R>0.
circle(point(_,_),R):-
    R>0.
