require 'yaml'
MESSAGES = YAML.load_file('calculator_messages.yml')

def prompt(message)
  puts("=> #{message}")
end

def integer?(num)
  num == num.to_i.to_s
end

def float?(num)
  num == num.to_f.to_s
end

def positive_number?(num)
  num.to_f > 0 && (integer?(num) || float?(num))
end

def zero?(num)
  num.to_f == 0 && (num.to_f.to_s == num || num.to_i.to_s == num)
end

def positive_integer?(num)
  integer?(num) && positive_number?(num)
end

def get_loan_amount
  prompt(MESSAGES['loan_amount_prompt'])
  amount = ''
  loop do
    amount = gets.chomp
    if positive_number?(amount)
      break
    else
      prompt(MESSAGES['invalid_input_loan'])
    end
  end
  amount
end

def get_apr_amount
  prompt(MESSAGES['apr_prompt'])
  amount = ''
  loop do
    amount = gets.chomp
    if positive_number?(amount) || zero?(amount)
      break
    else
      prompt(MESSAGES['invalid_input_apr'])
    end
  end
  amount
end

def apr_mpr(num)
  mpr = ''
  if num.to_f == 0
    mpr = 0
  else
    mpr = (num.to_f / 12) / 100
  end
  mpr
end

def get_year_amount
  prompt(MESSAGES['years_prompt'])
  amount = ''
  loop do
    amount = gets.chomp
    if positive_integer?(amount) || zero?(amount)
      break
    else
      prompt(MESSAGES['invalid_input_years'])
    end
  end
  amount
end

def get_month_amount
  prompt(MESSAGES['months_prompt'])
  amount = ''
  loop do
    amount = gets.chomp
    if positive_integer?(amount) == false && zero?(amount) == false
      prompt(MESSAGES['invalid_input_months'])
    elsif amount.to_i < 0
      prompt(MESSAGES['invalid_input_months'])
    elsif amount.to_i > 11
      prompt(MESSAGES['invalid_input_months'])
    else
      break
    end
  end
  amount
end

def calculate_payment(loan, interest, months)
  if interest == 0
    monthly_payment = loan.to_f / months.to_f
  else
    monthly_payment = loan.to_f * (interest /
    (1 - (1 + interest)**(-months.to_f)))
  end
  monthly_payment
end

def another_calculation
  prompt(MESSAGES['another_calculation'])
  start_over = ''
  loop do
    answer = gets.chomp.downcase
    if answer.downcase == 'y' || answer.downcase == 'yes'
      start_over = true
      break
    elsif answer.downcase == 'n' || answer.downcase == 'no'
      start_over = false
      break
    else
      prompt(MESSAGES['invalid_input_another_calculation'])
    end
  end
  start_over
end

prompt(MESSAGES['welcome'])

loop do
  loan_amount = get_loan_amount

  apr = get_apr_amount

  monthly_interest = apr_mpr(apr)

  years = ''
  months = ''

  loop do
    prompt(MESSAGES['loan_duration_prompt'])
    years = get_year_amount
    months = get_month_amount

    months = (years.to_i * 12) + months.to_i

    prompt("Is the total loan duration #{months} months? (Y for yes)")

    answer = gets.chomp.downcase
    if answer == 'y'
      break
    else
      prompt(MESSAGES['incorrect_duration_prompt'])
    end
  end

  monthly_payment = calculate_payment(loan_amount, monthly_interest, months)

  prompt("Your monthly payment is $#{monthly_payment.round(2)}.")

  break if another_calculation == false
end

prompt(MESSAGES['exit_thank_you'])
