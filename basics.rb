# Write a program that verifies whether someone can vote based on
# supplied age.
greet ="Please enter your age for access: "

print greet
age = gets.chomp.to_i
while age == 0
  puts "You need to enter a whole number greater than 0"
  print greet
  age = gets.chomp.to_i
end
if age < 18
  puts "You are not old enough to vote, go away!"
else
  puts "Welcome, you can vote."
end
