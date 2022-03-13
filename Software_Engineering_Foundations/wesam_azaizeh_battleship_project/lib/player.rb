class Player

    ## PART 3 ##

    def get_move
        puts 'enter a position with coordinates seperated with a space like `4 7`'
        move = gets.chomp.split.map(&:to_i)
    end

end