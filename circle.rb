class Circle
  def initialize(radius)
    radius
  end

  def area
    Math::PI * (radius ** 2)
  end

  def perimeter
    2 * Math::PI * radius
  end
end
