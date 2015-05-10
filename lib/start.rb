#
# The start file
#

require_relative "./ruby-fighter"

begin
  RubyFighter::Game.new.show
rescue Interrupt => e
  puts "\rScratch by bellah!"
end
