/** Sudoku([_,_,2,3,_,_,_,_,_,_,_,_,3,4,_,_], Sol). */
/** Sol = [4,1,2,3,2,3,4,1,1,2,3,4,3,4,1,2] */

value_or_null(X, V) :-
    var(X); X == V.

sudoku([I0,I1,I2,I3,I4,I5,I6,I7,I8,I9,Ia,Ib,Ic,Id,Ie,If],
       [S0,S1,S2,S3,S4,S5,S6,S7,S8,S9,Sa,Sb,Sc,Sd,Se,Sf]) :-
    value_or_null(I0, S0),
    value_or_null(I1, S1),
    value_or_null(I2, S2),
    value_or_null(I3, S3),
    value_or_null(I4, S4),
    value_or_null(I5, S5),
    value_or_null(I6, S6),
    value_or_null(I7, S7),
    value_or_null(I8, S8),
    value_or_null(I9, S9),
    value_or_null(Ia, Sa),
    value_or_null(Ib, Sb),
    value_or_null(Ic, Sc),
    value_or_null(Id, Sd),
    value_or_null(Ie, Se),
    value_or_null(If, Sf).

    

