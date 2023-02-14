loop do
  # METHODS USED FOR CALCULATION
  loan_duration_m = 0
  loan_amount = ""
  apr = 0
  loan_duration_y = ""
  additional_months = ""

  def prompt(message)
    puts("=> #{message}")
  end

  def valid_num?(amount_owed)
    amount_owed.to_f == 0.0 || amount_owed.to_f != 0.0
  end

  def num?(amount_owed)
    amount_owed.to_f.to_s == amount_owed || amount_owed.to_i.to_s == amount_owed
  end

  def valid_duration?(duration)
    duration.to_i.to_s == duration
  end

  def years_to_months(years)
    years.to_i * 12
  end

  # LOAN AMOUNT VALIDATION
  loop do
    prompt("Please enter the total loan amount.")
    loan_amount = gets.chomp

    if valid_num?(loan_amount) && num?(loan_amount)
      break
    else
      prompt("Please enter a valid amount (ex. 41500.04)")
    end
  end

  # ANNUAL PERCENT RATE VALIDATION
  loop do
    prompt("please enter your percentage rate (No percentage signs please)")
    apr = gets.chomp

    if valid_num?(apr) && num?(apr)
      apr = apr.to_f / 100.to_f
      break
    else
      prompt("Please enter a valid rate (ex. 5 or 5.5)")
    end
  end

  # LOAN DURATION  VALIDATION
  loop do
    prompt("Please enter the loan duration in years")
    loan_duration_y = gets.chomp

    if valid_duration?(loan_duration_y)
      loan_duration_m += years_to_months(loan_duration_y)
      break
    else
      prompt("Please enter a number when refering to the duration")
    end
  end

  # ADDITIONAL MONTHS
  loop do
    prompt("Please enter any additional months to loan duration")
    additional_months = gets.chomp

    if valid_duration?(additional_months)
      loan_duration_m += additional_months.to_i
      break
    else
      prompt("Please enter a valid number of months.(ex. 16")
    end
  end

  if additional_months.to_i > 0
    prompt("Your loan totals to $#{loan_amount.to_f}
    This will be paid back over:
    #{loan_duration_y} years and #{additional_months} months.")
  else
    prompt("Your loan totals to $#{loan_amount.to_f}
    This will be paid back over:
    #{loan_duration_y} years.")
  end

  # MONTHLY INTREST RATE AND PAYMENT CONVERSION
  monthly_ir = apr.to_f / 12.to_f
  month_pay = loan_amount.to_f * (monthly_ir / (1.0 - (1.0 + monthly_ir)**(-loan_duration_m.to_f)))

  # CALCULATION CONVERSIONS
  conversion_prompt = <<-MSG
  What would you like to calculate
  1) Loan duration in months
  2) Monthly payment
  3) Monthly intrest rate
  MSG

  loop do
    prompt(conversion_prompt)
    conversion = gets.chomp
    case conversion
    when '1'
      prompt("Your loan duration in months is #{loan_duration_m}")
    when '2'
      prompt("Your monthly payment is $#{month_pay}")
    when '3'
      prompt("Your monthly inrest rate is #{monthly_ir}")
    end

    prompt("Would you like to make another calculation")
    continue = gets.chomp
    break unless continue.downcase.start_with? 'y'
  end

  prompt("would you like to make calculate another loan? (yes or no)")
  program_termination = gets.chomp
  break unless program_termination.downcase.start_with? 'y'
end
