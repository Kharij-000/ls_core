#Mortgage loan calculator 
#Needed info (from user)
  #Loan amount 
  #anual perentage rate
  #loan duration
#Calculate the following info 
  #monthly intrest rate 
  #loan duraton in months 
  #monthly payment
#Example formula
  #m = p * (j / (1 - (1 + j)**(-n)))
  #m = monthly payment 
  #p = loan amount 
  #j = monthly intrest rate 
  #n = loan duration in months

loan_durationM = 0
month_pay = 0

def prompt(message)
  puts("=> #{message}")
end

def valid_num?(amount_owed)
  amount_owed.to_f == 0.0 || amount_owed.to_f != 0.0
end

def is_num?(amount_owed)
  amount_owed.to_f.to_s == amount_owed || amount_owed.to_i.to_s == amount_owed
end

def valid_duration?(duration)
  duration.to_i.to_s == duration
end

def years_to_months(years)
  years.to_i * 12
end


loop do
  loan_amount = ""
  prompt("Please enter the total loan amount.")
  loan_amount = gets.chomp
  
  if valid_num?(loan_amount) && is_num?(loan_amount)
    break 
  else 
    prompt("Please enter a valid amount (ex. 41500.04)")
  end
end

loop do 
  loan_durationY = ""
  prompt("Please enter the loan duration in years")
  loan_durationY = gets.chomp

  if valid_duration?(loan_durationY)
    loan_durationM += years_to_months(loan_durationY)
    break
  else
    prompt("Please enter a number when refering to the duration")
  end
end
puts loan_durationM
loop do 
  prompt("Please enter any additional months to loan duration")
  additional_months = gets.chomp
  
  if valid_duration?(additional_months)
    loan_durationM += additional_months.to_i
    break
  else
    prompt("Please enter a valid number of months.(ex. 16") 
  end
end

puts loan_durationM



