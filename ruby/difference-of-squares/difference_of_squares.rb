# class DifferenceOfSquares
# end

class Squares
  attr_reader :number

  def initialize(number)
    @number = number
  end

  def square_of_sum
    a = []
    number.downto(0) {|n| a << n}
    (a.reduce(:+)) ** 2
  end

  def sum_of_squares
    a = []
    number.downto(0) {|n| a << n}
    a.reduce(0) {|sum, n| sum + (n ** 2)}
  end

  def difference
    square_of_sum - sum_of_squares
  end
end

module BookKeeping
  VERSION = 3 # Where the version number matches the one in the test.
end
