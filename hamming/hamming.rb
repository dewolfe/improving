require 'pry'
class Hamming
  def self.compute(a,b)
    raise ArgumentError unless a.size == b.size
    count = 0
    a.chars.each_with_index{|c,i| count +=1 if b[i] != c}
    count
  end
end

module BookKeeping
  VERSION = 3
end
