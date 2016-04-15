module Comparable
# "other" is the other instance we're comparing this instance to.
  def <(other)
# "self" refers to the current instance
    (self <=> other) == -1
  end
  def >(other)
    (self <=> other) == 1
  end
  def ==(other)
    (self <=> other) == 0
  end
  def <=(other)
# spaceship <=> returns -1 if left is less than right
# 0 if equal, and 1 if left is greater than right.
    comparison = (self <=> other)
    comparison == -1 || comparison == 0
  end
  def >=(other)
    comparison = (self <=> other)
    comparison == 1 || comparison == 0
  end
  def between?(first, second)
    (self <=> first) >= 0 && (self <=> second) <= 0
  end
end
