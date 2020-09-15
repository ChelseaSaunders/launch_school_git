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

def number?(num)
  num.to_i > 0 && (integer?(num) || float?(num))
end

def get_amounts
  amount = ''
  loop do
    amount = gets.chomp
    if number?(amount)
      break
    else
      prompt(MESSAGES['invalid_input'])
    end
  end
  amount
end

prompt(MESSAGES['welcome'])

loop do
  prompt(MESSAGES['loan_amount_prompt'])
  loan_amount = get_amounts

  prompt(MESSAGES['apr_prompt'])
  apr = get_amounts

  monthly_interest = (apr.to_f / 12) / 100

  years = ''
  months = ''

  loop do
    prompt(MESSAGES['loan_duration_prompt'])
    prompt(MESSAGES['years_prompt'])
    years = get_amounts

    prompt(MESSAGES['months_prompt'])
    months = get_amounts

    months = (years.to_i * 12) + months.to_i

    prompt("Is the total loan duration #{months} months? (Y for yes)")

    # Per some discussion in the forum around trying to do string interpolation
    # with yaml being a bit more complex than necessary at our current learning
    # stage, I decided to skip the yaml for the two strings that use
    # interpolation in this assignment.

    answer = gets.chomp.downcase
    if answer == 'y'
      break
    else
      prompt(MESSAGES['incorrect_duration_prompt'])
    end
  end

  monthly_payment = loan_amount.to_f * (monthly_interest /
                    (1 - (1 + monthly_interest)**(-months.to_f)))

  prompt("Your monthly payment is $#{monthly_payment.round(2)}.")

  # I just used the Float.round method because I can't seem to understand the
  # Kernel.format method yet. I'm trying to get my head around it, though!

  prompt(MESSAGES['another_calculation'])
  answer = gets.chomp.downcase
  break if answer != 'y'
end
