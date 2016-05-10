module TvStore
  class Tv_Box
    attr_accessor :motherboard, :speakers

    def initialize (motherboard)
      self.motherboard = motherboard
    end

    def control
      self.motherboard.control
    end

    def show
      speakers = self.motherboard.volume_level
      puts "Channel: #{self.motherboard.channel}\nVolume = #{speakers}"
    end

  end
end