class Hamming

  def self.compute(strand_1, strand_2)
    if strand_1.length != strand_2.length
      raise ArgumentError
    else
     strand_1.chars.zip(strand_2.chars).count {|f, s| f != s}
    end
  end

end


module BookKeeping
  VERSION = 3 # Where the version number matches the one in the test.
end
