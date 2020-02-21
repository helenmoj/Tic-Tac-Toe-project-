
require_relative '../../Helen Rubymine project/Tic_Tac_Toe_project/board.rb'

module TicTacToe
  class Game

  attr_accessor :player_1, :player_2

  def initialize
    @board = Board.new
  end

  def pick_turn
    @current_player = [player_1, player_2].sample # sample returns a random element
    puts "\n\n\n\n #{@current_player} goes first!\n\n\n\n"
  end


  def welcome_screen
    puts "|||welcome to Naughts and Crosses!|||"
   # puts "|||...............................|||\n\n\n"
    print "Enter Player 1's  name: " # this is the new code i'm
    @player_1 = gets.chomp
    print "Enter Player 2's  name: "
    @player_2 = gets.chomp
    play
  end

  def play
    pick_turn
   counter =  0
   until counter == 9
     @board.turn
     counter += 1
   end
    if @board.won?
      @board.winner == "X" || @board.winner == "O"
      puts "congratulations #{@current_player}"
    elsif @board.draw?
      puts "Oh....a draw!"
  end
  end
end
  end