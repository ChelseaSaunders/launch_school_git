VALID_CHOICES = { 'r' => 'rock',
                  'p' => 'paper',
                  'sc' => 'scissors',
                  'l' => 'lizard',
                  'sp' => 'spock' }

computer_choice_list = []

VALID_CHOICES.each { |_, v| computer_choice_list << v }

winning = { 'rock' => ['scissors', 'lizard'],
            'lizard' => ['spock', 'paper'],
            'spock' => ['scissors', 'rock'],
            'paper' => ['rock', 'spock'],
            'scissors' => ['paper', 'lizard'] }

counter = { player_score: 0,
            computer_score: 0,
            ties: 0,
            total_games: 0 }

def prompt(message)
  puts("=> #{message}")
end

def win?(hash, winner, loser)
  hash[winner].include?(loser)
end

def game_counter(hash, key)
  hash[key] += 1
end

def display_results(winning, player, computer)
  if win?(winning, player, computer)
    prompt("You won!")
  elsif win?(winning, computer, player)
    prompt("Computer won!")
  else
    prompt("It's a tie!")
  end
end

def total_results(winning, player, computer, hash)
  if win?(winning, player, computer)
    hash[:player_score] += 1
  elsif win?(winning, computer, player)
    hash[:computer_score] += 1
  else
    hash[:ties] += 1
  end
end

def five_games_exit(key)
  if key < 5
    prompt("You have played #{key} game(s) and have #{5 - key} game(s) left.")
  elsif key == 5
    prompt("You played all 5 games!")
  end
end

choice = ''

loop do
  loop do
    prompt("Choose one:")
    VALID_CHOICES.each { |k, v| puts "Type #{k} for #{v}" }
    choice_abrev = gets.chomp.downcase

    if VALID_CHOICES.include?(choice_abrev)
      choice = VALID_CHOICES[choice_abrev]
      break
    else
      prompt("That's not a valid choice.")
    end
  end

  computer_choice = computer_choice_list.sample

  prompt("You chose: #{choice}; computer chose: #{computer_choice}")

  display_results(winning, choice, computer_choice)

  total_results(winning, choice, computer_choice, counter)

  prompt("You have won #{counter[:player_score]} game(s).")
  prompt("The computer has won #{counter[:computer_score]} game(s).")
  prompt("You have tied #{counter[:ties]} time(s).")

  game_counter(counter, :total_games)

  five_games_exit(counter[:total_games])

  break if counter[:total_games] == 5

  prompt("Do you want to play again? (Type 'y' or yes' to play again)")
  answer = gets.chomp
  break unless answer.downcase == 'yes' || answer.downcase == 'y'
end

prompt("Thank you for playing. Goodbye!")
