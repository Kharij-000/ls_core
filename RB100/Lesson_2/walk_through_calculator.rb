# Ask the user for 2 numbers
# ask the operation beign used
# perform the claculations based off of input
# output the result

def prompt(message)
  Kernel.puts("=> #{message}")
end

def valid_number?(num)
  num.to_i != 0 # doesn't allow for zero to be considered as a valid number
end

def operation_to_message(op)
  case op
  when '1'
    'Adding'
  when '2'
    'Subtracting'
  when '3'
    'Multiplying'
  when '4'
    'Dividing'
  end
end

prompt("welcome to the calculator")

loop do
  prompt("What's your name?")
  name = Kernel.gets().chomp()
  if name.empty?
    prompt('Please enter your name')
  else
    prompt("Hello #{name}")
    break
  end
end

loop do
  number1 = ""
  loop do
    prompt("Whats the first number?")
    number1 = Kernel.gets().chomp()

    if valid_number?(number1)
      break
    else
      prompt("Please Enter a Valid Number")
    end
  end

  number2 = ""
  loop do
    prompt("What's the second number?")
    number2 = Kernel.gets().chomp()

    if valid_number?(number2)
      break
    else
      puts "please enter a valid number?"
    end
  end

  operator_prompt = <<-MSG
    What operation would you like to perform?
    1) add
    2) subtract
    3) multiply
    4) divide
  MSG

  prompt(operator_prompt)
  operator = ''
  loop do
    operator = Kernel.gets().chomp()
    break if %w(1 2 3 4).include?(operator)
    prompt('Please choose 1, 2, 3, or 4')
  end

  prompt("#{operation_to_message(operator)} the two numbers...")

  # Refactored for readability
  result = case operator
            when '1'
              number1.to_i() + number2.to_i()
            when '2'
              number1.to_i() - number2.to_i()
            when '3'
              number1.to_i() * number2.to_i()
            when '4'
              number1.to_f() / number2.to_f()
            end

  prompt("The result is #{result}!")
  prompt("Would you like to perform another calculation?(Y or N)")
  continue = Kernel.gets().chomp()
  break unless continue.downcase().start_with?('y')
end
prompt('Goodbye :)')