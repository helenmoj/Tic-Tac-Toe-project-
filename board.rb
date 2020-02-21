
module TicTacToe
  class Board

    def initialize
      @spaces = Array.new(9, "-")
    end


    WINNING_POSITIONS = [  # WINNING_POSITIONS a constant and a parent array to the children array. Parent array contains 8 elements, which are each of the children array.
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [2,4,6]
]

    def current_player
      turn_count % 2 == 0 ? "X" : "O"
    end


    def turn # aks user to input a number. This number is converted into an integer. If it's valid then it will be placed on the board.
      puts "Please enter 1-9:"
      input = gets.strip
      index = input_to_index(input)
      if valid_move?(input) == true
        move(input,current_player)
        display_board
        else
        turn
        end
      end

def display_board
  row = "-----------"
  puts " #{@spaces[0]} | #{@spaces[1]} | #{@spaces[2]} "
  puts row
  puts " #{@spaces[3]} | #{@spaces[4]} | #{@spaces[5]} "
  puts row
  puts " #{@spaces[6]} | #{@spaces[7]} | #{@spaces[8]} "
end

    def position_taken?(index) #determines how to validate a taken position
        if  @spaces[index]== "X" || @spaces[index]== "O"
        return true
      else
        return false
      end
    end

    def valid_move?(input) # if the user's input converted index number is between 0-8 & position is not taken then move is valid.
      index = input_to_index(input)
      if (0..8).include?(index)
        if position_taken?(index)== true
          false
        else
          true
        end
        end
    end

    def won?  # Winner is determined by grabbing each index of the parent array to determine the Winner.
        WINNING_POSITIONS.each do |win_combination|
          if @spaces[win_combination[0]]==@spaces[win_combination[1]]&&@spaces[win_combination[0]]==@spaces[win_combination[2]]&&@spaces[win_combination[0]]!=" "
          return win_combination
        end
    end
    false
      end


    def over?
 if won? || full? || draw?
   return true
 end
    end


    def move(input, player="X") #now is reading the input as an integer, we can make a move
      index = input_to_index(input)
      @spaces[index] = player
    end

    def input_to_index(input)
      index = input.to_i - 1 # changes strings into integers, converts the user input into an integer, minus 1 because it counts up to 8, not 9
    end


def turn_count # keeps track of which player's turn it is.  Do this by defining turn_count & current_player
  counter = 0
    @spaces.each do |space|
        if space == "X" || space == "O"
      counter += 1
    end
    end
  turn_count = counter
end


def full?
  @spaces.all?{|x| x == "X" || x == "O"}
end

def draw?
  !won? && full? ? true : false
end


def winner # When a Winner is determined, the winning player is worked out.
  if won? ==  false
    return nil
  else
    win_combination = won?
    return @spaces[win_combination[0]]
  end
end
  end
  end