require_relative "board"
require_relative "card"


class Game
  attr_reader :prev_guess

  def initialize(n=4)
    @board = Board.new(n)
    @prev_guess = nil
    
  end


end

