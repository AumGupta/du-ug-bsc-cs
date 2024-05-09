/*sfasdf
adf
adfasd
fads
fadfa*/
parent(pam,bob).       % Pam is a parent of Bob
parent(tom,bob).
parent(tom,liz).
parent(bob,ann).
parent(bob,pat).
parent(pat,jim).

female(pam).           % Pam is female
female(liz).
female(pat).
female(ann).
male(tom).             % Tom is male
male(bob).
male(jim).

hasachild(X):-
	parent(X,_).
offspring(X,Y):-       % Y is an offspring of X if
    parent(Y,X).       % X is a parent of Y.

mother(X,Y):-          % X is the mother of Y if
    parent(X,Y),       % X is a parent of Y and
    female(X).         % X is a female.

grandparent(X,Y):-     % X is a grandparent of Y if
    parent(X,Z),       % X is a parent of Z and
    parent(Z,Y).       % Z is a parent of Y.

different(X,Y):-
    X\=Y.

sister(X,Y):-          % X is a sister of Y if
    parent(Z,X),       % Z is a parent of X and
    parent(Z,Y),       % Z is a parent of Y and
    female(X),         % X is female and
    different(X,Y).    % X is different from Y.

predecessor(X,Y):-     % Rule pr1: X is a predecessor (direct) of Y if
    parent(X,Y).       %           X is a parent of Y.

predecessor(X,Y):-     % Rule pr1: X is a predecessor (indirect) of Y if
    parent(X,Z),       %           X is a parent of Z and
    predecessor(Z,Y).  %           Z is a predecessor of Y.











