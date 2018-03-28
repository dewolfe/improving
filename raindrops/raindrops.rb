class Raindrops
  def self.convert(n)
    pling = proc { |f| f % 3 == 0 ? 'Pling' : '' }
    plang = proc { |f| f % 5 == 0 ? 'Plang' : '' }
    plong = proc { |f| f % 7 == 0 ? 'Plong' : '' }
    rtn = pling.call(n) + plang.call(n) + plong.call(n)
    rtn.empty? ? n.to_s : rtn
  end
end

module BookKeeping
 VERSION = 3
end
