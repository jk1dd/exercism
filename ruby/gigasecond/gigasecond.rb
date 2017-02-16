class Gigasecond
  def self.from(time)
    future = time.to_i + (10 ** 9)
    Time.at(future).utc
  end
end

module BookKeeping
  VERSION = 5# Where the version number matches the one in the test.
end
