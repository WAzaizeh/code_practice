class Board

    ## PART 1 ##

    attr_reader  :size

    def initialize(n)
        @grid = Array.new(n) {Array.new(n , :N)}
        @size = n * n
    end

    def [](pos)
        row, col = pos
        @grid[row][col]
    end

    def []=(pos, val)
        row, col = pos
        @grid[row][col] = val
    end

    def num_ships
        @grid.flatten.count(:S)
    end

    ## PART 2 ##

    def attack(pos)
        if self[pos] == :S
            self[pos] = :H
            puts 'you sunk my battleship!'
            return true
        else
            self[pos] = :X
            return false
        end
    end

    def place_random_ships( num = size/4)
        while self.num_ships < num do
            row, col = rand(@grid.size), rand(@grid.size)
            self[[row,col]] = :S
        end
    end
            
    def hidden_ships_grid
        @grid.map {|row| row.map{ |e| e == :S ? :N : e}}
    end

    def self.print_grid(grid)
        grid.map{|row| puts row.join(' ')}
    end

    def cheat
        Board.print_grid @grid
    end

    def print
        Board.print_grid self.hidden_ships_grid
    end

end