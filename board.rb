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

        return characters.concat(characters)
    end

    def populate
        characters = self.generate_characters
        rows = *(0..@grid.length-1)
        cols = *(0..@grid.length-1)

        characters.each do |letter|
            row = rows.sample
            col = cols.sample
            @grid[row][col] = letter if !@grid[row][col]

        end
        
    end
    
    

        

        
    end

        # numberofcards.even? ? numberofcards:numberofcards-1 





















end
