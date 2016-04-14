Input & Output

What do 'print' and 'puts' do in Ruby?

print will print information to the user of the program
puts will print information to the user but will include a newline (\n)

What does 'gets' do in Ruby?

gets will pause the program and request input from the user.

Add a screenshot in the comments of the program you created that uses
'puts' and 'gets', and give it the title, "I/O".

puts "Tell me something interesting."
interesting = gets.chomp
puts "So you thing #{interesting} is interesting? It's not that interesting."


Numbers & Arithmetic

What is the difference between integers and floats?
integers will only work with round numbers and will coerce values to rounded numbers
floats will allow decimal values and are better for more accurate values.
Complete the challenge, and post a screenshot of your program in the comments with the title, "Numbers".

puts "What is your first number?"
num1 = gets.chomp.to_f
puts "What is your second number?"
num2 = gets.chomp.to_f
puts "Your total is #{num1 + num2}"
