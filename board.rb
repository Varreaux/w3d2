require_relative "card"

class Board

    def initialize(n)
        @grid = Array.new(n) {Array.new(n)}
    end


    def  [](pos)
        row, col = pos
        @grid[row][col]
    end

    def []=(pos, val)
        row, col = pos
        @grid[row][col] = val
    end

    # generate_characters generate n different letters from the alphabet
    def generate_characters
        numberofcards = (@grid.length*@grid.length)/2
        alpha = *('a'..'z') 
        alpha.sample
        characters = []

        while characters.length < numberofcards
            char = alpha.sample 
            characters << char if !characters.include?(char)
        end

        return characters.concat(characters).shuffle
    end

    def populate
        characters = self.generate_characters
        rows = *(0..@grid.length-1)
        cols = *(0..@grid.length-1)

        coordinates = []
        rows.each do |i|
            cols.each do |j|
                coordinates << [i,j]
            end
        end

        characters.each_with_index do |letter, i|
            self[coordinates[i]] = Card.new(letter)
        end

        return @grid        
    end

    def render
        @grid.each do |row|
            puts row.join(" ")
        end
    end



    
    



        
 










end
