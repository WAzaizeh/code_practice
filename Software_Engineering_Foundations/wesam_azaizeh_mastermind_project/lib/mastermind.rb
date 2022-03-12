require_relative "code"

class Mastermind

    ### PART 3 ##

    def initialize(len)
        @secret_code = Code.random(len)
    end

    def print_matches(code_2)
        puts @secret_code.num_exact_matches(code_2)
        puts @secret_code.num_near_matches(code_2)
    end

    def ask_user_for_guess
        puts 'Enter a code'
        guess = gets.chomp
        guess_code = Code.from_string(guess)
        print_matches(guess_code)
        @secret_code.num_exact_matches(guess_code) == guess.size
    end

end
