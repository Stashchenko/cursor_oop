module TvStore
  class Motherboard
    attr_accessor :monitor, :volume_level, :channel, :control

    def initialize(monitor)
      self.monitor = monitor
      self.volume_level = 10
      self.channel= 1
    end

    def add_control(control)
      self.control= control
      control.motherboard= self
    end

  end
end