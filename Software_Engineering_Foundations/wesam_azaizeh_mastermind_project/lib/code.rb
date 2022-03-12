class Code
  POSSIBLE_PEGS = {
    "R" => :red,
    "G" => :green,
    "B" => :blue,
    "Y" => :yellow
  }

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
    pegs = str.each_char
    Code.valid_pegs?(pegs) ? Code.new( pegs) : (raise 'contains invalide peg(s)!')
  end

  def [](idx)
    @pegs[idx]
  end

  def length
    @pegs.size
  end

end