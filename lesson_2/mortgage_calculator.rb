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
      prompt("Oops! Amount must be a positive number. Please try again.")
    end
  end
  amount
end

prompt("Welcome to the mortgage calculator!")

loop do
  prompt('Please enter the loan amount:')
  loan_amount = get_amounts

  prompt('Please enter the Annual Percentage Rate (APR):')
  apr = get_amounts

  monthly_interest = (apr.to_f / 12) / 100

  years = ''
  months = ''

  loop do
    prompt('Please enter the loan duration:')
    prompt('Years:')
    years = get_amounts

    prompt('Months:')
    months = get_amounts

    months = (years.to_i * 12) + months.to_i

    prompt("Is the total loan duration #{months} months? (Y for yes)")
    answer = gets.chomp.downcase
    if answer == 'y'
      break
    else
      prompt("Oops! Let's try again!")
    end
  end

  monthly_payment = loan_amount.to_f * (monthly_interest /
                    (1 - (1 + monthly_interest)**(-months.to_f)))

  prompt("Your monthly payment is $#{monthly_payment.round(2)}.")

# I just used the Float.round method because I can't seem to understand the
# Kernel.format method yet. I'm trying to get my head around it, though!

  prompt("Would you like to do another calculation? (Y for yes)")
  answer = gets.chomp
  break if answer != 'y'
end
