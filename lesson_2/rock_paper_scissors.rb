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

MAX = 5

def prompt(message)
  puts("=> #{message}")
end

def display_hello
  prompt("Welcome to Rock, Paper, Scissors!")
end

def win?(hash, winner, loser)
  hash[winner].include?(loser)
end

def game_counter(hash, key)
  hash[key] += 1
end

def display_choices(choice1, choice2)
  prompt("You chose: #{choice1}; computer chose: #{choice2}")
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

def display_current_scores(score)
  prompt("You have won #{score[:player_score]} game(s).")
  prompt("The computer has won #{score[:computer_score]} game(s).")
  prompt("You have tied #{score[:ties]} time(s).")
end

def five_games_exit(key)
  if key < MAX
    prompt("You have played #{key} game(s) and have #{MAX - key} game(s) left.")
  elsif key == MAX
    prompt("You played all 5 games!")
  end
end

def tournament_over?(hash)
  true if hash[:total_games] == MAX
end

def another_game
  prompt("Do you want to play again?")
  start_over = ''
  loop do
    prompt("Type 'y' or 'yes' to play again, or 'n' or 'no' to exit.)")
    answer = gets.chomp.downcase
    if answer.downcase == 'y' || answer.downcase == 'yes'
      start_over = true
      break
    elsif answer.downcase == 'n' || answer.downcase == 'no'
      start_over = false
      break
    else
      prompt("Oops! Invalid input." )
    end
  end
  start_over
end

def play_again?(again)
  again == true
end

def display_goodbye
  prompt("Thank you for playing. Goodbye!")
end

choice = ''

display_hello

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

  system "clear"

  computer_choice = computer_choice_list.sample

  display_choices(choice, computer_choice)

  display_results(winning, choice, computer_choice)

  total_results(winning, choice, computer_choice, counter)

  display_current_scores(counter)

  game_counter(counter, :total_games)

  five_games_exit(counter[:total_games])

  break if tournament_over?(counter)

  break unless play_again?(another_game)

  system "clear"
end

display_goodbye
