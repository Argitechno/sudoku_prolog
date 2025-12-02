/** Sudoku([_,_,2,3,_,_,_,_,_,_,_,_,3,4,_,_], Sol). */
/** Sol = [4,1,2,3,2,3,4,1,1,2,3,4,3,4,1,2] */

sudoku([I0,I1,I2,I3,I4,I5,I6,I7,I8,I9,Ia,Ib,Ic,Id,Ie,If],
       [S0,S1,S2,S3,S4,S5,S6,S7,S8,S9,Sa,Sb,Sc,Sd,Se,Sf]) :-
    (var(I0); I0 == S0),
    (var(I1); I1 == S1),
    (var(I2); I2 == S2),
    (var(I3); I3 == S3),
    (var(I4); I4 == S4),
    (var(I5); I5 == S5),
    (var(I6); I6 == S6),
    (var(I7); I7 == S7),
    (var(I8); I8 == S8),
    (var(I9); I9 == S9),
    (var(Ia); Ia == Sa),
    (var(Ib); Ib == Sb),
    (var(Ic); Ic == Sc),
    (var(Id); Id == Sd),
    (var(Ie); Ie == Se),
    (var(If); If == Sf).

