class Array
  def my_uniq
    result = []
    self.each do |el|
      result << el unless result.include?(el)
    end
    result
  end

  def two_sum
    result = []
    len = self.length
    (0...len-1).each do |i|
      (i+1...len).each do |j|
        if self[i] + self[j] == 0
          result << [i, j]
        end
      end
    end
    result
  end

  def my_transpose
    result = Array.new(self.first.length) {[]}
    self.each do |sub_arr|
      sub_arr.each_index do |i|
        result[i] << sub_arr[i]
      end
    end
    result
  end

  def stock_picker
    result = {}
    len = self.length
    (0...len-1).each do |i|
      (i+1...len).each do |j|
        result[self[j] - self[i]] = [i, j]
      end
    end
    profits = result.keys.sort
    result[profits.last]
  end
end


##### stock picker
