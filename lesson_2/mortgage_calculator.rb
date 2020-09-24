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

def valid_input?(data_type, data)
  case data_type
  when 'loan'
    positive_number?(data)
  when 'apr'
    positive_number?(data) || zero?(data)
  when 'year'
    positive_integer?(data) || zero?(data)
  end
end

def get_amount(input_type, error_message_type)
  prompt(MESSAGES[input_type])
  input = ''
  loop do
    input = gets.chomp
    if valid_input?(input_type, input)
      break
    else
      prompt(MESSAGES[error_message_type])
    end
  end
  input
end

def get_month_amount
  prompt(MESSAGES['months'])
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

def apr_to_mpr(num)
  mpr = ''
  if num.to_f == 0
    mpr = 0
  else
    mpr = (num.to_f / 12) / 100
  end
  mpr
end

def loan_duration
  month_total = ''
  loop do
    prompt(MESSAGES['loan_duration_prompt'])
    years = get_amount('year', 'invalid_input_year')
    month_total = get_month_amount

    month_total = (years.to_i * 12) + month_total.to_i

    prompt("Is the total loan duration #{month_total} months? (Y for yes)")

    answer = gets.chomp.downcase
    if answer == 'y'
      break
    else
      prompt(MESSAGES['incorrect_duration_prompt'])
    end
  end
  month_total
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

# BEGIN PROGRAM:

prompt(MESSAGES['welcome'])

loop do
  loan_amount = get_amount('loan', 'invalid_input_loan')

  apr = get_amount('apr', 'invalid_input_apr')

  monthly_interest = apr_to_mpr(apr)

  months = loan_duration

  monthly_payment = calculate_payment(loan_amount, monthly_interest, months)

  prompt("Your monthly payment is $#{monthly_payment.round(2)}.")

  break if another_calculation == false
end

prompt(MESSAGES['exit_thank_you'])
