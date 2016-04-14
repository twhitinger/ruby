# two modules
# a class
# code to create an instance of the class and call methods on it


module Clumsy
  def break(thing)
    puts "Knocks over #{thing}"
  end
end

module Curious
  def investigate(thing)
    puts "Looks at #{thing}"
  end
end

class Monkey
  include Curious
  include Clumsy
end


bubbles = Monkey.new
