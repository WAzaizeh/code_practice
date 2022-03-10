class GuessingGame

    INF = +1.0/0.0

    def initialize(min_num, max_num)
        @min = min_num
        @max = max_num
        @secret_num = rand(@min .. @max)
        @num_attempts = 0
        @game_over = false
    end

    def num_attempts
        @num_attempts
    end

    def game_over?
        @game_over
    end

    def check_num(n)
        @num_attempts += 1
        case n
        when @secret_num
            puts 'you win'
            @game_over = true
        when (0 .. @secret_num - 1)
            puts 'too small'
        when (@secret_num +1 .. INF)
            puts 'too big'
        end
    end

    def ask_user
        print 'Enter a min number: '
        n = gets.chomp.to_i
        check_num(n)
    end

end

game = GuessingGame.new(2 ,5)
game.check_num(1)
