class OvenOffError < StandardError
end
class OvenEmptyError < StandardError
end

class SmallOven

  attr_accessor :contents

  def turn_on
    puts "Turning oven on."
    @state = "on"
  end
  def turn_off
    puts "Turning oven off."
    @state = "off"
  end

  def bake
# Raise an error if we attempt to bake while the oven is off
    unless @state == "on"
      raise OvenOffError, "You need to turn the oven on first!"
    end
# Raise an error if we attempt to back while the oven is empty
    if @contents == nil
      raise OvenEmptyError, "There's nothing in the oven!"
    end
    "golden-brown #{contents}"
  end

end

dinner = ['turkey', nil, 'pie']
oven = SmallOven.new
oven.turn_on
# process each menu item
dinner.each do |item|
  begin
# place the item in the oven
    oven.contents = item
    puts "Serving #{oven.bake}."
# store the exception in a variable
# rescue only OvenEmptyError
  rescue OvenEmptyError => error
# print out whatever message the exception contains
    puts "Error: #{error.message}"

# rescue only OvenOffError
  rescue OvenOffError => error
# the oven must be off, so turn it on.
    oven.turn_on
    retry

  end
end
