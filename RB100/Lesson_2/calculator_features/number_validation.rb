#Number check and validtion 
#build a validating method, called number?,
#Verify that only valid numbers -- integers or floats -- are entered?

#P-C
#take previously enterd value as argument (user input)
#convert it to a float or integer and back to string
#if true complete

def prompt(message)
  Kernel.puts("=> #{message}")
end

def number?(num)
  num.to_f.to_i.to_s
end 

def valid_number?(num)
  num.to_i == 0 || num.to_i != 0 
end



loop do
  prompt("Whats the first number?")
  number1 = Kernel.gets().chomp()

  if valid_number?(number1) && number?(number1)
    break
  else
    prompt("Please Enter a Valid Number")
  end
end
