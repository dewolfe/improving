require 'set'
class Sieve
  attr_accessor :marked,:prime ,:num
  def initialize(num)
    @marked = Set.new
    @prime = []
    @num = num
  end

  def primes
    return [] unless num > 1
    (2..num).each do |number|
      next if marked.include?(number)
      prime << number
    (1..num).inject(marked){|mked,r| mked.add(number * r)}
    end
    prime
  end
end

module BookKeeping
  VERSION = 1
end
