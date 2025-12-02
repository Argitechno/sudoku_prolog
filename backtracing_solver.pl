/** Sudoku([_,_,2,3,_,_,_,_,_,_,_,_,3,4,_,_], Sol). */
/** Sol = [4,1,2,3,2,3,4,1,1,2,3,4,3,4,1,2] */

value(X, V) :-
    (X = V).

all4_different(A,B,C,D) :-
    A \= B, A \= C, A \= D,
    B \= C, B \= D,
    C \= D.

between(Min, Max, Min) :- Min =< Max.
between(Min, Max, X) :-
    Min < Max,
    Next is Min + 1,
    between(Next, Max, X).

sudoku([I0,I1,I2,I3,I4,I5,I6,I7,I8,I9,Ia,Ib,Ic,Id,Ie,If],
       [S0,S1,S2,S3,S4,S5,S6,S7,S8,S9,Sa,Sb,Sc,Sd,Se,Sf]) :-
  
  % All solution cells must be between 1 and 4
  between(1,4,S0), between(1,4,S1), between(1,4,S2), between(1,4,S3),
  between(1,4,S4), between(1,4,S5), between(1,4,S6), between(1,4,S7),
  between(1,4,S8), between(1,4,S9), between(1,4,Sa), between(1,4,Sb),
  between(1,4,Sc), between(1,4,Sd), between(1,4,Se), between(1,4,Sf),  

  % All solution cells must be equal to the input cell
  value(I0, S0),
  value(I1, S1),
  value(I2, S2),
  value(I3, S3),
  value(I4, S4),
  value(I5, S5),
  value(I6, S6),
  value(I7, S7),
  value(I8, S8),
  value(I9, S9),
  value(Ia, Sa),
  value(Ib, Sb),
  value(Ic, Sc),
  value(Id, Sd),
  value(Ie, Se),
  value(If, Sf),

  % A cell must have no duplicates in it's row, column, or 2x2.

  % rows
  all4_different(S0, S1, S2, S3),
  all4_different(S4, S5, S6, S7),
  all4_different(S8, S9, Sa, Sb),
  all4_different(Sc, Sd, Se, Sf),

  % columns
  all4_different(S0, S4, S8, Sc),
  all4_different(S1, S5, S9, Sd),
  all4_different(S2, S6, Sa, Se),
  all4_different(S3, S7, Sb, Sf),
  

  % blocks (Only need to check a diagonal, row and col cover the other 2)
  all4_different(S0, S1, S4, S5),
  all4_different(S2, S3, S6, S7),
  all4_different(S8, S9, Sc, Sd),
  all4_different(Sa, Sb, Se, Sf).
