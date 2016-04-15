class Apple

  include Comparable

  attr_accessor :weight

  def initialize(weight)
    self.weight = weight
  end

  def <=>(other)
    self.weight <=> other.weight
  end
end


# between?

# <=>
# >=
# spaceship
# constant
# other
# =>
