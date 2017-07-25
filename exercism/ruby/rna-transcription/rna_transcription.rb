module BookKeeping
  VERSION = 4
end

class Complement

  def self.translate strand, key
    output = strand.chars.map { |n| key[n] }.join
    return '' if output.length != strand.length
    output
  end

  DNA_KEY = {
    'C' => 'G',
    'G' => 'C',
    'T' => 'A',
    'A' => 'U'
  }

  def self.of_dna strand
    translate strand, DNA_KEY
  end

  def self.of_rna strand
    translate strand, DNA_KEY.invert
  end

end
