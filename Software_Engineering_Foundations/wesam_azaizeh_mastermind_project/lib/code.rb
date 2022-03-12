class Code
  POSSIBLE_PEGS = {
    "R" => :red,
    "G" => :green,
    "B" => :blue,
    "Y" => :yellow
  }

  ## PART 1 ##

  attr_reader :pegs

  def self.valid_pegs?(chars)
    chars.all? {|c| POSSIBLE_PEGS.has_key?( c.upcase)}
  end

  def initialize(chars)
    Code.valid_pegs?(chars) ? @pegs = chars.map(&:upcase) : (raise 'contains invalide peg(s)!')
  end

  def self.random(len)
    Code.new( len.times.collect { POSSIBLE_PEGS.keys.sample})
  end

  def self.from_string(str)
    pegs = str.chars.to_a
    Code.valid_pegs?(pegs) ? Code.new(pegs) : (raise 'contains invalide peg(s)!')
  end

  def [](idx)
    @pegs[idx]
  end

  def length
    @pegs.size
  end

  ## PART 2 ##

  def num_exact_matches(code_2)
    (0 ... self.pegs.length).count{|i| self.pegs[i] == code_2.pegs[i]}
  end

  def num_near_matches(code_2)
    include_idx = self.pegs.each_index.select{|i| self.pegs[i] != code_2.pegs[i]}
    if include_idx.length < 2
       return 0
    else
      to_match = @pegs.values_at(*include_idx)
      c = 0
      include_idx.map do |i|
         if to_match.include?(p code_2.pegs[i])
          to_match.delete_at( to_match.index(code_2.pegs[i]))
          c += 1
         end
        end
        c
    end
  end

  def ==(code_2)
    return code_2.length == self.num_exact_matches(code_2)
  end

end

# code_1 = Code.from_string('RGRB')
# code_2 = Code.new(["G", "R", "R", "R"])
# p code_1.num_near_matches(code_2)