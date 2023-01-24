require_relative "board"
require_relative "card"
require_relative "game"


puts "Guess the position "
current_guess = gets.chomp.split.map(&:to_i)


until battleship.game_over? do
  puts "-------------------------"
  battleship.turn
end