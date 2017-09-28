class PigLatin
  def self.translate(string)
    final_string = ""
    last_word = string.split.last
    string.split.each do |word|
      final_string << process(word) + " "
    end
    final_string.strip
  end

  def self.process(word)
    combined_sounds = ["ch", "sh", "qu", "squ", "thr", "th", "sch"]
    first_letter = word.chars.first
    first_letter_x_or_y = first_letter == "y" || first_letter == "x"

    if (first_letter_x_or_y && !is_vowel?(word[1]) || is_vowel?(word[0]))
      return word + "ay"
    end

    combined_sounds.each do |sound|
      if word[0..sound.length - 1] == sound[0..sound.length - 1]
        return word[(sound.length)..-1] + sound + "ay"
      end
    end

    word[1..word.length - 1] + first_letter + "ay"
  end

  def self.is_vowel?(letter)
    ["a", "e", "i", "o", "u"].include? letter
  end
end

module BookKeeping
  VERSION = 1 # Where the version number matches the one in the test.
end
