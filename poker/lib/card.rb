class Card

  attr_reader :suit, :value

  def initialize(suit, value)
    @suit = suit
    @value = value
  end

  def inspect
    "suit: #{@suit} value: #{@value} \n "
  end

  VALUES = {
    2 => 2,
    3 => 3,
    4 => 4,
    5 => 5,
    6 => 6,
    7 => 7,
    8 =>  8,
    9 => 9,
    10 =>  10,
    jack: 11,
    queen: 12,
    king: 13,
    ace: 14,
    heart: 2,
    spade: 2,
    clubs: 1,
    diamond: 1
  }

end

# if __FILE__ == $0
#   c = Card.new(:clover, :ten)
#
# end
