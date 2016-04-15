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
# if the oven hasn't been turned on, warn the user.
    unless @state == "on"
      raise "You need to turn the oven on first!"
    end
# if nothing is in the oven, warn the user.
    if @contents == nil
      raise "There's nothing in the oven!"
    end
    "golden-brown #{contents}"
  end

end

dinner = ['turkey', 'casserole', 'pie']
oven = SmallOven.new
oven.turn_on
# process each menu item
dinner.each do |item|
# place the item in the oven
  oven.contents = item
# Bake and serve the item.
  puts "Serving #{oven.bake}."
end
