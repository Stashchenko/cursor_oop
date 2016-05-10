load 'tv_builder.rb'

tv_builder = TvBuilder.new
tv = tv_builder.tv_box
tv.show()
puts "Set volume as: +/-.\nChannel: 1 or 2 etc. Type 'exit' to quit"

while (command = gets.chomp) != 'exit'
  tv.control.volume_up if command == '+'
  tv.control.volume_down if command =='-'
  tv.control.set_channel(command) if command.to_i > 0
  tv.show()
end


