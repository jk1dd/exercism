# create map of numerals
# convert and subtract
# from largest place to smallest (thousands to ones)

class Fixnum
  # I, V, X, L, C, D, M.
  NUM_MAP = [
    ["I", 1], ["IV", 4], ["V", 5], ["IX", 9],
    ["X", 10], ["XL", 40], ["L", 50], ["XC", 90],
    ["C", 100], ["CD", 400], ["D", 500], ["CM", 900], ["M", 1000]
  ]

  def to_roman
    result = ''
    number = self
    NUM_MAP.reverse.each do |pair|
      while number >= pair[1]
        result << pair[0]
        number -= pair[1]
      end
    end
    result
  end

end

module BookKeeping
  VERSION = 2
end
