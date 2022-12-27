# Ask the user for 2 numbers 
#ask the operation beign used 
#perform the clculations based off of input 
#output the result

Kernel.puts("welcome to the calculator")

Kernel.puts("Whats the first number?")
num1 = Kernel.gets().chomp()

Kernel.puts("What's the second number?")
num2 = Kernel.gets().chomp()

Kernel.puts("What operation would you like to perform 1) add 2) subtract 3) multiply 4) divide")
operator = Kernel.gets.chomp

if operator == "1"
  result = num1.to_i() + num2.to_i()
elsif operator == "2"
  result = num1.to_i() - num2.to_i()
elsif operator == "3"
  result = num1.to_i() * num2.to_i()
elsif operator == "4"
  result = num1.to_i() / num2.to_i()
end

Kernel.puts("The result is #{result}!")