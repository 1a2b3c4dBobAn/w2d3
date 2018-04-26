require 'rspec'
require 'prac'


RSpec.describe Array do
  subject(:arr) { [1,2,1,3,3] }
  describe "#my_uniq" do
    it "it should take in an Array and return uniq elements in the order in which they first appeared" do
      expect(arr.my_uniq).to eq(arr.uniq)
    end
  end

  describe "#two_sum" do
    let(:arr_for_sum) {[-1, 0, 2, -2, 1]}
    # before(:each) do
    #
    # end

    it "should return an empty array if no indices are found" do
      expect(arr.two_sum).to eq([])
    end

    it "all indices pairs correspond to elements sum to zero" do
      result = arr_for_sum.two_sum
      expect(result.all? {|sub_arr| (arr_for_sum[sub_arr[0]] + arr_for_sum[sub_arr[1]]) == 0}).to be true

    end

    it "should return indices in sorted order (dictionary-wise)" do
      result = arr_for_sum.two_sum
      expect(result[0][0]).to be <= result[1][0]
    end
  end

  describe "#my_transpose" do
    let(:rows) {[
    [0, 1, 2],
    [3, 4, 5],
    [6, 7, 8]
    ]}
    let(:cols) {[
    [0, 3, 6],
    [1, 4, 7],
    [2, 5, 8]
    ]}
    it "it will make a matrix from row-oriented to column-oriented" do
      expect(rows.my_transpose).to eq(cols)
    end
    it "it will make a matrix from column-oriented to row-oriented" do
      expect(cols.my_transpose).to eq(rows)
    end
  end

  describe "#stock_picker" do
    let(:stocks) { [10, 2, 5, 3, 4, 7, 9, 3]}

    it "should have stock before selling" do
      result = stocks.stock_picker
      expect(result[0]). to be < result[1]
    end

    it "should return the most profitable day pairs" do
      expect(stocks.stock_picker).to eq([1,6])
    end
  end

end
