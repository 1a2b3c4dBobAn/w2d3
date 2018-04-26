class Game
  attr_accessor :pegs

  def initialize
    @pegs = [[3,2,1],[],[]]

  end

  def move(from, to)
    if valid_move?(from, to)
      @pegs[to].push(@pegs[from].pop)
    else
      raise 'Invalid move.'
    end
  end

  def valid_move?(from, to)
    return true if @pegs[to].empty?
    return false if @pegs[from].empty?
    @pegs[from].last < @pegs[to].first
  end


end
