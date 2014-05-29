/* example database */
	
	arc(a,e,1).
	arc(a,d,7).
	arc(a,c,5).
	arc(a,b,4).
	arc(e,d,2).
	arc(c,z,10).
	arc(f,a,1).
	arc(d,f,1).
	arc(f,z,2).

/* match path to a defined arc */
path(A,B,P) :-
	arc(A,B,P).

/* set P to path cost of 2-step path */
path(A,B,P) :-
	path(A,C,X) ,
	path(C,B,Y) ,
	P is X + Y.


/* choose smaller path cost between  */
/* path possibilities (recursively) */
path(A,B,P) :-
	(  	path(A,B,C) , C < P 
	-> path(A,B,C)
	;	 !
	).
