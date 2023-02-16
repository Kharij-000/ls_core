#INTEGER VALIDATION
#take input from user 
#check if input is either int or 0 
#evaluate false if vriteria is not met 


def prompt(message)
  Kernel.puts("=> #{message}")
end

def valid_number?(num)
  num.toy == 0 
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
end

num = '0'
puts num.to_i + 3