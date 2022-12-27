puts "it's true!" if some_method_call#by default assigns to true
#Truthiness 
#Short circuting example
name =find_name 

if name && name.valid? # (Valid?) not a built in method for ruby
  puts "great name!"
else
  puts "either couldn't find name or it's invalid"
end
