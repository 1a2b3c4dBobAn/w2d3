require 'rspec'
require 'hanoi'

RSpec.describe Game do
  subject(:hanoi) {Game.new}
  before(:each) do
      hanoi.move(0,1)
  end

  describe '#move' do
    it "should decrease from position by one" do
      expect(hanoi.pegs[0]).to eq([3,2])
    end
    it "should increase to position by one" do
      expect(hanoi.pegs[1]).to eq([1])
    end
    it "should raise error unless it is a valid move" do
        expect{hanoi.move(0,1)}.to raise_error("Invalid move.")
    end
    it "should only move the smaller disc on top of the larger disc" do
      hanoi.move(0,2)
      hanoi.move(1,2)
      expect(hanoi.pegs[2]).to eq([2,1])
    end
  end

  describe "#won?" do

    it "should have the first peg empty" do

    end
    it "should have only the 2nd or 3rd peg full" do

    end
    it "should have the discs in the right order" do

    end
  end

end
