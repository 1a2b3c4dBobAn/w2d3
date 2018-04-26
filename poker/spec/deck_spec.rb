require 'rspec'
require 'deck'

RSpec.describe Deck do
  subject(:new_deck) {Deck.new}
  let(:suits) {[:heart, :spade, :clubs, :diamond]}
  let(:queen) {double("queen")}
  describe "#initialize" do
    it "should fill the deck with 52 cards" do
      expect(new_deck.deck.length).to eq(52)
    end

    it "should have 16 face cards" do
      face_cards = new_deck.deck.select do |card|
        card.value > 10
      end
      expect(face_cards.count).to eq(16)
    end

    it "should have 4 different suits" do
      suit_count = new_deck.deck.count do |card|
        card.suit == :heart
      end
      expect(suit_count).to eq(13)
    end
  end

  describe "#shuffle" do
    it "should shuffle the deck" do
      old_deck = new_deck.deck.dup
      new_deck.shuffle
      expect(new_deck.deck).not_to eq(old_deck)
    end
  end

  describe "#deal_card" do
    it "subtract the card from deck" do
      allow(queen).to receive(:suit).and_return(:heart)
      allow(queen).to receive(:value).and_return(12)
      new_deck.deal_card(queen)
      expect(new_deck.deck).to_not include(queen)
    end
  end
end
