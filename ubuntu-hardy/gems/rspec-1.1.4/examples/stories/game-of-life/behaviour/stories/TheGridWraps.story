Story: The grid wraps

As a game player
I want the grid to wrap
So that untidy stuff at the edges is avoided

Scenario: crowded in the corners

Given the grid looks like
X.X
...
X.X
When the next step is taken
Then the grid should look like
X.X
...
X.X


Scenario: the glider returns

Given the glider
......
..X...
.X....
.XXX..
......
When the next step is taken
and the next step is taken
and the next step is taken
and the next step is taken
Then the grid should look like
......
......
.X....
X.....
XXX...
When the next step is taken
Then the grid should look like
.X....
......
......
X.X...
XX....
When the next step is taken
Then the grid should look like
XX....
......
......
X.....
X.X...
