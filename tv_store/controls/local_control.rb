module TvStore
  module Controls
    class LocalControl

      attr_accessor :motherboard

      def volume_up
        self.motherboard.volume_level += 1
      end

      def volume_down
        self.motherboard.volume_level -= 1
      end

      def set_channel(channel)
        self.motherboard.channel = channel.to_i
      end

    end
  end
end