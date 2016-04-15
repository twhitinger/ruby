class Steak
# All Steak instances are now Comparable
  include Comparable
# Define the constant within the class body.
  GRADE_SCORES = {"Prime" => 3, "Choice" => 2, "Select" => 1}
  attr_accessor :grade
#This is the "other" instance of Steak that were going to compare
# this instance to.

  def <=>(other)
  # if this steak's grade is lower than the other steak's grade,
  # return -1.
    if  GRADE_SCORES[self.grade] < GRADE_SCORES[other.grade]
      return -1
    elsif GRADE_SCORES[self.grade] == GRADE_SCORES[other.grade]
      return 0
    else
      return 1
    end
  end

end

prime = Steak.new
prime.grade = "Prime"
choice = Steak.new
choice.grade = "Choice"
select = Steak.new
select.grade = "Select"

puts "prime > choice: #{prime > choice}"
puts "prime < select: #{prime < select}"
puts "select == select: #{select == select}"
puts "select <= select: #{select <= select}"
puts "select >= choice: #{select >= choice}"
print "choice.between?(select, prime): "
puts  choice.between?(select, prime) 
