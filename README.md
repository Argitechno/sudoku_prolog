Given the following task by cs-210
```
  Your mission is to write a Prolog program to solve the sudoku puzzle.
  The input will look like this:
  sudoku([_,_,2,3,_,_,_,_,_,_,_,_,3,4,_,_], Sol).  
  The output will look like this:
  Sol = [4,1,2,3,2,3,4,1,1,2,3,4,3,4,1,2]
```
I attempted to solve this. Rudimentary attempts involved rules that stated each spot was valid,
and was a complicated form of backtracing. It took a while. I would like to decrease this time.
I will start by researching the generic algorithms utilized for solving sudoku.

Starting resource:
https://en.wikipedia.org/wiki/Sudoku_solving_algorithms

My first **new** attempt will be to implement the backtracing algorithm described here, for a 4x4 grid.