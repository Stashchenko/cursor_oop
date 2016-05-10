load 'tv_store/monitor.rb'
load 'tv_store/motherboard.rb'
load 'tv_store/tv_box.rb'
load 'tv_store/controls/local_control.rb'

class TvBuilder
  attr_accessor :monitor, :tv_box

  def initialize
    monitor = TvStore::Monitor.new('1024#768', 'LCD', '1:1000')
    motherboard = TvStore::Motherboard.new(monitor)
    motherboard.add_control(TvStore::Controls::LocalControl.new)
    self.tv_box = TvStore::Tv_Box.new(motherboard)
  end



end