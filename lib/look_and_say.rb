require "look_and_say/version"
require "look_and_say/errors"
require 'look_and_say/look_and_say_sequence'

module LookAndSay
 def look_and_say
   LookAndSaySequence.new(self)
 end
end

class Integer
  include LookAndSay
end

