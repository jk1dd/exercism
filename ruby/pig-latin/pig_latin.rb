class PigLatin
  def self.translate(string)
    final_string = ""
    last_word = string.split.last
    string.split.each do |word|
      if last_word == word
        final_string << process(word)
      else
        final_string << process(word) + " "
      end
    end
    final_string
  end

  def self.process(word)
    vowels = ["a", "e", "i", "o", "u"]
    combined_sounds = ["ch", "sh", "qu", "squ", "thr", "th", "sch"]

    if ((word[0] == "y" || word[0] == "x") && !vowels.include?(word[1])) || vowels.include?(word[0])
      return word + "ay"
    end

    combined_sounds.each do |sound|
      if word[0..sound.length - 1] == sound[0..sound.length - 1]
        return word[(sound.length)..(word.length - 1)] + sound + "ay"
      end
    end

    first_letter = word.chars.first
    word[1..word.length - 1] + first_letter + "ay"
  end
end

module BookKeeping
  VERSION = 1 # Where the version number matches the one in the test.
end
