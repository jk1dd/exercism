class Sieve
  attr_reader :number_max
  def initialize(number_max)
    @number_max = number_max
  end

  def primes
    primes = (0..number_max).to_a
    primes[0] = primes[1] = nil

    primes.each do |n|
      next unless n
      break if n*n > number_max
      (n*n).step(number_max,n) {|multiple| primes[multiple] = nil}
      # step explanation https://www.dotnetperls.com/iterator-ruby
      # first arg is the ending index, second is the step
    end
    primes.compact
  end
end

module BookKeeping
  VERSION = 1
end
