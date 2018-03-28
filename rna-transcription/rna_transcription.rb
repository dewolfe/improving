require 'pry'
class Complement
  def self.of_dna(seq)
    trans = { 'G' => 'C', 'C' => 'G', 'T' => 'A', 'A' => 'U' }
    str = []
    seq.chars.each do |char|
      return '' unless trans[char]
      str << trans[char]
    end
    str.join
  end
end

module BookKeeping
  VERSION = 4
end
