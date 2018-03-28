require 'pry'
class Squares
  attr_accessor :num

  def initialize(num)
    @num = num
  end

  def square_of_sum
    ((1..num).inject(:+))**2
  end

  def sum_of_squares
    (1..num).inject(0){|t,n| t += n**2}
  end

  def difference
    square_of_sum - sum_of_squares
  end
end

module BookKeeping
  VERSION = 4
end
