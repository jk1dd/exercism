class Complement
  def self.of_dna(dna_string)
    converts = dna_string.chars.map do |char|
      if char == "G"
        "C"
      elsif char == "C"
        "G"
      elsif char == "T"
        "A"
      elsif char == "A"
        "U"
      end
    end
  end
end
