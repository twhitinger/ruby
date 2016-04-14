module Inventoryable

  def stock_count
    @stock_count || @stock_count = 0
  end

  def stock_count=(number)
    @stock_count = number
  end

  def in_stock?
    stock_count > 0
  end

end

class Shirt
  include Inventoryable
  attr_accessor :attributes

  def initialize(attr)
    @attributes = attr
  end
end

class Pant
  attr_accessor :attributes

  def initialize(attr)
    @attributes = attr
  end
end

class Accessory
  attr_accessor :attributes

  def initialize(attr)
    @attributes = attr
  end
end

shirt1 = Shirt.new(name: "MTF", size: "L")
shirt2 = Shirt.new(name: "MTF", size: "M")

shirt1.stock_count = 10

puts "Shirt 1 stock count: %s" % shirt1.stock_count
puts "Shirt 2 stock count: %s" % shirt2.stock_count

puts "Shirt 1 in stock?: %s" % shirt1.in_stock?
puts "Shirt s in stock?: %s" % shirt2.in_stock?
