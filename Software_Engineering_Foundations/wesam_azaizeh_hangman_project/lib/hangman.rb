class Hangman
  DICTIONARY = ["cat", "dog", "bootcamp", "pizza"]

  ## PART 1 ##

  def self.random_word
    DICTIONARY.sample
  end

  def initialize
    @secret_word = Hangman.random_word
    @guess_word = Array.new(@secret_word.size ,'_')
    @attempted_chars = []
    @remaining_incorrect_guesses = 5
  end

  def guess_word
    @guess_word
  end

  def attempted_chars
    @attempted_chars
  end

  def remaining_incorrect_guesses
    @remaining_incorrect_guesses
  end

  def already_attempted?(c)
    attempted_chars.include?(c)
  end

  def get_matching_indices(c)
    p @secret_word
    @secret_word.include?(c) ? (0 .. @secret_word.length).find_all {|i| @secret_word[i] == c} : []
  end

  def fill_indices(c ,arr)
    arr.each {|i| @guess_word[i] = c}
  end

  ## PART 2 ## 

  def try_guess(c)
    if already_attempted?(c)
      puts 'that has already been attempted'
      false
    else
      @attempted_chars << c
      if @secret_word.include?(c)
         idx_arr = get_matching_indices(c)
        fill_indices(c, idx_arr)
      else
        @remaining_incorrect_guesses -= 1
      end
      true
    end
  end

  def ask_user_for_guess
    puts 'Enter a char:'
    c = gets.chomp
    try_guess(c)
  end

  def win?
    if @guess_word.join == @secret_word
      puts 'WIN'
      true
    else
      false
    end
  end

  def lose?
    if @remaining_incorrect_guesses == 0
      puts 'LOSE'
      true
    else
      false
    end
  end

  def game_over?
    if win? || lose?
      puts @secret_word
      true
    else false
    end
  end

end