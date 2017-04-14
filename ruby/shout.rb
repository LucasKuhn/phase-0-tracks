# --- OLD CODE --- #
# module Shout
#   def self.yell_angrily(words)
#     words + "!!!" + " :("
#   end
#   def self.yell_happily(words)
#     words.upcase + "!!! :D :D!"
#   end
# end 

module Shout
  def yell(words)
    puts "#{words.upcase}! I'M GONNA CRY :("
  end
end

class Kid
  include Shout
end

class Programmer
  include Shout
end

# ---- DRIVER CODE
child = Kid.new
child.yell("I lost my toy")

grown_up_child = Programmer.new
grown_up_child.yell("I lost my code")