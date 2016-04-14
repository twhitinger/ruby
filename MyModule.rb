module MyModule
  def first_method
    puts "first_method called"
  end
  def second_method
    puts "second_method called"
  end
end

# class MyClass
#   include MyModule
# end

module Friendly
  def method_one
    puts "Hello from Friendly"
  end
end

module Friendlier
  def method_two
    puts "Hello from Friendlier!!"
  end
end

class MyClass
  include Friendly
  include Friendlier
end
