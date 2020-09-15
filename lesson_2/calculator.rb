# ask the user for two numbers
# ask the user for an opertation to perform
# perform the operation on the two numbers
# output the result

def prompt(message)
  puts("=> #{message}")
end

def integer?(num)
  Integer(num) rescue false
end 

def float?(num)
  Float(num) rescue false
end

def number?(num)
  integer?(num) || float?(num)
end

def operation_to_message(op)
  case op
  when '1'
    'Adding'
  when '2'
    'Subtracting'
  when '3'
    'Multiplying'
  when '4'
    'Dividing'
  end
end

prompt("Welcome to Calculator! Enter your name:")

name = ''

loop do
  name = gets.chomp

  if name.empty?
    prompt("Make sure to use a valid name.")
  else
    break
  end
end

prompt("Hi #{name}")

loop do
  number1 = ''

  loop do
    prompt("What's the first number?")
    number1 = gets.chomp

    if number?(number1)
      break
    else
      prompt("Hmm...that doesn't look like a valid number.  Please try again.")
    end
  end
  
  number1 = number1.to_f

  number2 = ''

  loop do
    prompt("What's the second number?")
    number2 = gets.chomp

    if number?(number2)
      break
    else
      prompt("Hmm...that doesn't look like a valid number.  Please try again.")
    end
  end

  number2 = number2.to_f

  operator_prompt = <<-MSG
    What operation would you like to perform? 
    1) add 
    2) subtract 
    3) multiply 
    4) divide
  MSG

  prompt(operator_prompt)

  operator = ''
  loop do
    operator = gets.chomp
    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt("Must choose 1, 2, 3, or 4.")
    end
  end

  prompt("#{operation_to_message(operator)} the two numbers")

  result = case operator
           when '1'
             number1 + number2
           when '2'
             number1 - number2
           when '3'
             number1 * number2
           when '4'
             number1 / number2
           end

  prompt("The result is #{result}")

  prompt("Do you want to perform another calculation? (Y to calculate)")
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt("Thank you for using the calculator!")
