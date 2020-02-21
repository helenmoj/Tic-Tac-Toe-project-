Tic Tac Toe in Ruby

I set myself a project to put together a Tic Tac Toe game in Ruby, has helped a lot with continuing to learn Ruby :) 

Pseudocode:


Current Player takes turns playing => Define what a turn is; how will a player take turns playing?

1st turn — Current Player …. the cycle continues until a player wins or there’s a tie game => iterate the game with players taking turns; a player can’t place a token on a square that’s already taken

There are 8 winning combinations: Top row, Middle row, Bottom row, Left column, Middle column, Right column, Left diagonal, and Right diagonal => Define these

There’s a draw/tie when the entire board is filled with X’s and O’s but no winning combinations can be found => Define what a draw/tie is; define what a filled board is


To run:

ruby tic_tac_toe.rb 