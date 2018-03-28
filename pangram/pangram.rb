class Pangram
  def self.pangram?(phrase)
    phrase.downcase.gsub(/[^a-z]/, '').chars.uniq.count == 26
  end
end

module BookKeeping
  VERSION = 6
end
