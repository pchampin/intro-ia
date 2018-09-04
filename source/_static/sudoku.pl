val(1).
val(2).
val(3).
val(4).

alldiff(V1,V2,V3,V4) :-
    V1 \= V2, V1 \= V3, V1 \= V4,
    V2 \= V3, V2 \= V4,
    V3 \= V4 .

s0(
  A1,A2,A3,A4,
  B1,B2,B3,B4,
  C1,C2,C3,C4,
  D1,D2,D3,D4) :-

    val(A1), val(A2), val(A3), val(A4),
    val(B1), val(B2), val(B3), val(B4),
    val(C1), val(C2), val(C3), val(C4),
    val(D1), val(D2), val(D3), val(D4),

    alldiff(A1,A2,A3,A4),
    alldiff(B1,B2,B3,B4),
    alldiff(C1,C2,C3,C4),
    alldiff(D1,D2,D3,D4),

    alldiff(A1,B1,C1,D1),
    alldiff(A2,B2,C2,D2),
    alldiff(A3,B3,C3,D3),
    alldiff(A4,B4,C4,D4),

    alldiff(A1,A2,B1,B2),
    alldiff(C1,C2,D1,D2),
    alldiff(A3,A4,B3,B4),
    alldiff(C3,C4,D3,D4),

    true.

s1(
  A1,A2,A3,A4,
  B1,B2,B3,B4,
  C1,C2,C3,C4,
  D1,D2,D3,D4) :-

    val(A1), val(A2), val(A3), val(A4),
    alldiff(A1,A2,A3,A4),

    val(B1), val(B2),
    alldiff(A1,A2,B1,B2),

    val(B3), val(B4),
    alldiff(A3,A4,B3,B4),
    alldiff(B1,B2,B3,B4),

    val(C1), val(C2), val(C3), val(C4),
    alldiff(C1,C2,C3,C4),

    val(D1),
    alldiff(A1,B1,C1,D1),

    val(D2),
    alldiff(A2,B2,C2,D2),
    alldiff(C1,C2,D1,D2),

    val(D3),
    alldiff(A3,B3,C3,D3),

    val(D4),
    alldiff(A4,B4,C4,D4),
    alldiff(C3,C4,D3,D4),
    alldiff(D1,D2,D3,D4),

    true.

pop([H|T],H,T).
pop([H|T],E,[H|T2]) :- pop(T,E,T2).

s2(
  A1,A2,A3,A4,
  B1,B2,B3,B4,
  C1,C2,C3,C4,
  D1,D2,D3,D4) :-

    XA0 = [1,2,3,4],
    pop(XA0,A1,XA1), pop(XA1,A2,XA2), pop(XA2,A3,XA3), pop(XA3,A4,_),
    /* alldiff(A1,A2,A3,A4), // implied by the use of pop() */

    XB0 = [1,2,3,4],
    pop(XB0,B1,XB1), pop(XB1,B2,XB2),
    alldiff(A1,A2,B1,B2),

    pop(XB2,B3,XB3), pop(XB3,B4,_),
    alldiff(A3,A4,B3,B4),
    /* alldiff(B1,B2,B3,B4), // implied by the use of pop() */

    XC0 = [1,2,3,4],
    pop(XC0,C1,XC1), pop(XC1,C2,XC2), pop(XC2,C3,XC3), pop(XC3,C4,_),
    /* alldiff(C1,C2,C3,C4), // implied by the use of pop() */

    XD0 = [1,2,3,4],
    pop(XD0,D1,XD1),
    alldiff(A1,B1,C1,D1),

    pop(XD1,D2,XD2),
    alldiff(A2,B2,C2,D2),
    alldiff(C1,C2,D1,D2),

    pop(XD2,D3,XD3),
    alldiff(A3,B3,C3,D3),

    pop(XD3,D4,_),
    alldiff(A4,B4,C4,D4),
    alldiff(C3,C4,D3,D4),
    /* alldiff(D1,D2,D3,D4),  // implied by the use of pop() */

    true.


test0
    :- time(s0(
         1, A2,A3,A4,
         B1,B2,B3,B4,
         C1, 3,C3,C4,
         D1, 1, 2,D4)),
       print("naive sudoku: "),
       print([
         [1, A2,A3,A4],
         [B1,B2,B3,B4],
         [C1, 3,C3,C4],
         [D1, 1, 2,D4]]).
test1
    :- time(s1(
         1, A2,A3,A4,
         B1,B2,B3,B4,
         C1, 3,C3,C4,
         D1, 1, 2,D4)),
       print("optimized sudoku: "),
       print([
         [1, A2,A3,A4],
         [B1,B2,B3,B4],
         [C1, 3,C3,C4],
         [D1, 1, 2,D4]]).
test2
    :- time(s2(
         1, A2,A3,A4,
         B1,B2,B3,B4,
         C1, 3,C3,C4,
         D1, 1, 2,D4)),
       print("better optimized sudoku: "),
       print([
         [1, A2,A3,A4],
         [B1,B2,B3,B4],
         [C1, 3,C3,C4],
         [D1, 1, 2,D4]]).
