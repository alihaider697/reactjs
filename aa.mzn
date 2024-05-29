include "alldifferent.mzn"; 


array[1..5, 1..5] of var 1..5: grid;


constraint
  
  all_different([grid[i,j] | i in 1..5, j in 1..5]) /\

  
  grid[1,2] < grid[1,3] /\
  grid[1,4] < grid[1,5] /\
  grid[2,1] < grid[2,2] /\
  grid[2,3] < grid[2,4] /\
  grid[2,4] < grid[2,5] /\
  grid[3,2] < grid[3,3] /\
  grid[3,4] < grid[3,5] /\
  grid[4,1] < grid[4,2] /\
  grid[4,3] < grid[4,4] /\
  grid[4,4] < grid[4,5] /\
  grid[5,2] < grid[5,3] /\
  grid[5,4] < grid[5,5];


solve satisfy;


output [show(grid[i,j]) ++ if j == 5 then "\n" else " " endif | i in 1..5, j in 1..5];
