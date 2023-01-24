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


    def populate
        numberofcards = (n*n)/2
        alpha = *('a'..'z') 
        alpha.sample
        characters = []

        while characters.length < numberofcards
            char = alpha.sample 
            characters << char if !characters.include?(char)
        end

        

        
    end

        # numberofcards.even? ? numberofcards:numberofcards-1 





















end
