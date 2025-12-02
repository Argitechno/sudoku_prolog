/** Sudoku([_,_,2,3,_,_,_,_,_,_,_,_,3,4,_,_], Sol). */
/** Sol = [4,1,2,3,2,3,4,1,1,2,3,4,3,4,1,2] */

value(X, V) :-
    (X = V).

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
  dif(S0, S1), dif(S0, S2), dif(S0, S3),
  dif(S1, S2), dif(S1, S3),
  dif(S2, S3),

  dif(S4, S5), dif(S4, S6), dif(S4, S7),
  dif(S5, S6), dif(S5, S7),
  dif(S6, S7),

  dif(S8, S9), dif(S8, Sa), dif(S8, Sb),
  dif(S9, Sa), dif(S9, Sb),
  dif(Sa, Sb),

  dif(Sc, Sd), dif(Sc, Se), dif(Sc, Sf),
  dif(Sd, Se), dif(Sd, Sf),
  dif(Se, Sf),

  % columns
  dif(S0, S4), dif(S0, S8), dif(S0, Sc),
  dif(S4, S8), dif(S4, Sc),
  dif(S8, Sc),

  dif(S1, S4), dif(S1, S9), dif(S1, Sd),
  dif(S5, S9), dif(S5, Sd),
  dif(S9, Sd),

  dif(S2, S5), dif(S2, Sa), dif(S2, Se),
  dif(S6, Sa), dif(S6, Se),
  dif(Sa, Se),

  dif(S3, S6), dif(S3, Sb), dif(S3, Sf),
  dif(S7, Sb), dif(S7, Sf),
  dif(Sb, Sf),

  % blocks (Only need to check a diagonal, row and col cover the other 2)
  dif(S0, S5),
  dif(S1, S4),
  dif(S2, S7),
  dif(S3, S6),

  dif(S8, Sd),
  dif(S9, Sc),
  dif(Sa, Sf),
  dif(Sb, Se).
