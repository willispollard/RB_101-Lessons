def prompt(message)
  puts("=> #{message}")
end

def valid_number?(num)
  num.to_i.to_s == num
end

def number?(num)
  num.to_f.to_s == num || num.to_i.to_s == num
end

prompt("Welcome to Mortage Calculator!")

loop do
  loan_amount = ''
  loop do
    prompt("Please enter the loan amount:")
    loan_amount = gets.chomp
    if valid_number?(loan_amount)
      break
    else
      prompt("Hmm.. that doesn't look like a valid number.")
    end
  end

  apr = ''
  loop do
    prompt("Please enter the APR:")
    apr = gets.chomp
    if number?(apr)
      break
    else
      prompt("Hmm.. that doesn't look like a valid number.")
    end
  end

  loan_duration = ''
  loop do
    prompt("What is the duration of the loan (in months)?")
    loan_duration = gets.chomp
    if valid_number?(loan_duration)
      break
    else
      prompt("Hmm.. that doesn't look like a valid number.")
    end
  end

  annual_interest = apr.to_f / 100
  monthly_interest_rate = annual_interest / 12
  monthly_payment = loan_amount.to_f *
                    (monthly_interest_rate /
                    (1 - (1 + monthly_interest_rate)**(-loan_duration.to_i)))

  prompt("Your monthly payment is:")
  puts "$" + monthly_payment.round(2).to_s

  prompt("Would you like to start again? (Enter Y if so)")
  input = gets.chomp
  if input.downcase != 'y'
    prompt("Goodbye!")
    break
  else
    prompt("Let's do it again!")
  end
end
