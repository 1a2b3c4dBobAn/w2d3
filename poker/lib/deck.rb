require_relative 'card'

class Deck
  attr_reader :deck

  def initialize
    @deck = []
    fill_deck
  end

  SUIT = [:heart, :spade, :clubs, :diamond]

  def fill_deck
    SUIT.each do |suit|
      (2..14).each do |value|
        @deck << Card.new(suit, value)
      end
    end
  end

  def deal_card(card)
    @deck.delete(card)
    @deck
  end

  def shuffle
    @deck.shuffle!
  end
end

if __FILE__ == $0

  d = Deck.new
  p face_cards = d.deck.select do |card|
    card.character == :jack
  end
end
