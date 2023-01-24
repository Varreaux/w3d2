require_relative "board"
require_relative "card"


class Game
  attr_reader :prev_guess

  def initialize(n=4)
    @board = Board.new(n)
    @prev_guess = nil
    
  end


  def play
    while !won?
      @board.render
        puts "Guess the position "
        current_guess = gets.chomp.split.map(&:to_i)
        guessed_pos(current_guess)





    end



end

