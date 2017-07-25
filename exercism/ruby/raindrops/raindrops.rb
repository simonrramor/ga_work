class Raindrops
  def self.convert(n)
    output = ""
    if n % 3 == 0 then output += "Pling" end
    if n % 5 == 0 then output += "Plang" end
    if n % 7 == 0 then output += "Plong" end
    if output == "" then output = n.to_s end
    output
  end
end

module BookKeeping
  VERSION = 3 # Where the version number matches the one in the test.
end
