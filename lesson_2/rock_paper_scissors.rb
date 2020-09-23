require 'yaml'
MESSAGES = YAML.load_file('rock_paper_scissors_messages.yml')

# Per the comment in the forum, I did not use YAML files for strings that are
# interpolated.

# VARIABLE ASSIGNMENTS:

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

# METHODS:

def prompt(message)
  puts("=> #{message}")
end

def display_hello
  prompt(MESSAGES['welcome'])
end

def retrieve_user_move
  user_choice = ''
  loop do
    prompt(MESSAGES['user_choice_prompt'])
    VALID_CHOICES.each { |k, v| puts "Type '#{k}' for #{v}" }
    user_choice = gets.chomp.downcase
    break if VALID_CHOICES.include?(user_choice)
    prompt(MESSAGES['invalid_input'])
  end
  user_choice = VALID_CHOICES[user_choice]
end

def retrieve_computer_move(array)
  array.sample
end

def win?(hash, winner, loser)
  hash[winner].include?(loser)
end

def line_break
  puts ""
end

def display_choices(choice1, choice2)
  prompt("You chose: #{choice1}")
  prompt("Computer chose: #{choice2}")
end

def display_results(winning, player, computer)
  if win?(winning, player, computer)
    prompt(MESSAGES['player_won'])
  elsif win?(winning, computer, player)
    prompt(MESSAGES['computer_won'])
  else
    prompt(MESSAGES['tie'])
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
  hash[:total_games] += 1
end

def display_current_scores(score)
  prompt("#{score[:total_games]} games played.")
  prompt("You won #{score[:player_score]} game(s).")
  prompt("The computer won #{score[:computer_score]} game(s).")
  prompt("You have tied #{score[:ties]} time(s).")
end

def five_games_exit(player_win, computer_win)
  if player_win == MAX
    prompt(MESSAGES['player_grand_winner'])
  elsif computer_win == MAX
    prompt(MESSAGES['computer_grand_winner'])
  end
end

def tournament_over?(hash)
  true if hash[:computer_score] == MAX || hash[:player_score] == MAX
end

def another_game
  start_over = ''
  loop do
    prompt(MESSAGES['another_game_prompt'])
    answer = gets.chomp.downcase
    if answer.downcase == 'y' || answer.downcase == 'yes'
      start_over = true
      break
    elsif answer.downcase == 'n' || answer.downcase == 'no'
      start_over = false
      break
    else
      prompt(MESSAGES['invalid_input'])
    end
  end
  start_over
end

def play_again?(again)
  again == true
end

def display_goodbye
  prompt(MESSAGES['goodbye'])
end

def clear_screen
  system 'clear'
end

# BEGIN PROGRAM

display_hello

loop do
  choice = retrieve_user_move

  clear_screen

  computer_choice = retrieve_computer_move(computer_choice_list)

  display_choices(choice, computer_choice)

  line_break

  display_results(winning, choice, computer_choice)

  line_break

  total_results(winning, choice, computer_choice, counter)

  display_current_scores(counter)

  line_break

  five_games_exit(counter[:player_score], counter[:computer_score])

  break if tournament_over?(counter)

  break unless play_again?(another_game)

  clear_screen
end

line_break

display_goodbye
