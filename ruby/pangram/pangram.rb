require 'pry'
class Pangram

  def self.pangram?(phrase)
    alphabet = 'abcdefghijklmnopqrstuvwxyz'
    letters = phrase.downcase.chars.delete_if {|char| !('a'..'z').include?(char) }.sort.uniq.join
    letters == alphabet ? true : false
  end
end

module BookKeeping
  VERSION = 4 # Where the version number matches the one in the test.
end
