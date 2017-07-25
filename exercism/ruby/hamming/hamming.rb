module BookKeeping
  VERSION = 3
end

class Hamming
  def self.compute strand_a, strand_b
    raise ArgumentError, 'strings are of different lengths' unless strand_a.length == strand_b.length
    strand_a.chars.zip(strand_b.chars).count { |pair| pair[0] != pair[1] }
  end
end
