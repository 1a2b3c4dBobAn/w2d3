require 'rspec'
require 'card'

RSpec.describe Card do
  subject(:ten) {Card.new(:clubs, 10)}

  describe "#initialize" do
    it "should have a suit" do
     expect(ten.suit).to eq(:clubs)
    end
    it "should have a value" do
      expect(ten.value).to eq(10)
    end
  end
end
