class Raindrops
  def self.convert(dropz)
    phrase = []
    if dropz % 3 == 0
      phrase << "Pling"
    end

    if dropz % 5 == 0
      phrase << "Plang"
    end

    if dropz % 7 == 0
      phrase << "Plong"
    end

    if dropz % 3 != 0 && dropz % 5 != 0 && dropz % 7 != 0
      phrase << dropz.to_s
    end

    phrase.join
  end
  # def self.convert(dropz)
  #   phrase = []
  #   if dropz % 3 == 0 && dropz % 5 == 0 && dropz % 7 == 0 # there's gotta be a better way
  #     phrase << "PlingPlangPlong"
  #   elsif dropz % 3 == 0 && dropz % 5 == 0 # there's gotta be a better way
  #     phrase << "PlingPlang"
  #   elsif dropz % 3 == 0 && dropz % 7 == 0 # there's gotta be a better way
  #     phrase << "PlingPlong"
  #   elsif dropz % 5 == 0 && dropz % 7 == 0 # there's gotta be a better way
  #     phrase << "PlangPlong"
  #   elsif dropz % 3 == 0
  #     phrase << "Pling"
  #   elsif dropz % 5 == 0
  #     phrase << "Plang"
  #   elsif dropz % 7 == 0
  #     phrase << "Plong"
  #   else
  #     phrase = [dropz.to_s]
  #   end
  #   phrase.join
  # end
end


module BookKeeping
  VERSION = 3 # Where the version number matches the one in the test.
end
