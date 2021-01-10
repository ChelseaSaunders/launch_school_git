SUITS = ['Hearts', 'Clubs', 'Diamonds', 'Spades']

# rubocop:disable Layout/LineLength

FACE_CARD_STRINGS = ['1', '2', '3', '4', '5', '6', '7', '8', '9', 'Jack', 'Queen', 'King', 'Ace']

# rubocop:enable Layout/LineLength

BUSTED = 21
DEALER_HIT_MAX = 17

def linebreak
  puts ''
  sleep(1)
end

def greeting
  puts "Welcome to 21!"
  linebreak
  puts "Let's play!"
  linebreak
end

def array_of_cards(suits, face_card_string)
  all_cards = []
  suits.each do |suit|
    counter = 0
    face_card_string.length.times do
      all_cards << (face_card_string[counter] + ' of ' + suit)
      counter += 1
    end
  end

  all_cards
end

def card_values(cards)
  all_cards_with_values = {}
  cards.each { |card| all_cards_with_values[card] = nil }
  all_cards_with_values
end

def assign_card_value(cards)
  cards.each_key do |card|
    cards[card] = if (2..9).include?(card[0].to_i)
                    card[0].to_i
                  elsif card[0..2] == 'ace'
                    [1, 11]
                  else
                    10
                  end
  end
end

def initialize_master_deck_values(suits, face_card_strings)
  all_cards_string = array_of_cards(suits, face_card_strings)
  deck_hash = card_values(all_cards_string)
  deck_hash_with_values = assign_card_value(deck_hash)
  deck_hash_with_values
end

def initialize_deck(deck)
  card_deck = []
  deck.each_key { |card| card_deck << card }
  card_deck.shuffle
end

def deal_cards(card_deck, player_hand, dealer_hand)
  player_hand << card_deck.pop
  dealer_hand << card_deck.pop
  player_hand << card_deck.pop
  dealer_hand << card_deck.pop
end

def joinand(arr)
  string = ''
  if arr.length == 1
    string = arr.join
  elsif arr.length == 2
    string = arr.first + ' and ' + arr.last
  elsif arr.length >= 3
    first = arr[0..-2]
    string = first.join(', ') + ' and ' + arr.last
  end

  string
end

def aces(current_hand_value, ace_card, deck)
  ace_value = if current_hand_value > 10
                deck[ace_card][0]
              else
                deck[ace_card][1]
              end

  ace_value
end

def calculate_hand_value(cards, deck)
  total = 0
  cards.each { |card| total += deck[card] if card[0..2] != 'ace' }
  cards.each { |card| total += aces(total, card, deck) if card[0..2] == 'ace' }

  total
end

def display_player_hand(player_hand, value)
  puts "You have #{joinand(player_hand)} worth a total of #{value} points."
end

def dealer_visible_hand(dealer_hand)
  visible = dealer_hand[1..-1]
  visible
end

def display_visible_dealer_hand(visible_dealer_hand)
  puts "Dealer has unknown card and #{joinand(visible_dealer_hand)}."
end

def display_full_dealer_hand(dealer_hand, value)
  puts "Dealer has #{joinand(dealer_hand)} worth a total of #{value} points."
  linebreak
end

def hit_or_stay
  answer = nil
  loop do
    linebreak
    puts "Hit or stay? (Type 'h' for hit and 's' for stay.)"
    answer = gets.chomp.downcase
    break if answer == "h" || answer == "s"
    puts "Invalid answer, please choose 'h' for hit or 's' for stay."
  end

  if answer == "s"
    puts "You chose to stay."
  else
    puts "You chose to hit."
  end
  linebreak
  answer
end

def hit(player_hand, card_deck)
  player_hand << card_deck.pop
end

def display_new_card_player(hand)
  puts "You drew #{hand.last}."
  linebreak
end

def display_new_card_dealer(hand)
  puts "Dealer drew #{hand.last}."
  linebreak
end

def display_dealer_hit_or_stay(value)
  if value < DEALER_HIT_MAX
    puts "Dealer hits."
  else
    puts "Dealer stays."
  end
  linebreak
end

def dealer_stay?(value)
  value >= DEALER_HIT_MAX
end

def busted?(hand_value)
  hand_value > BUSTED
end

def display_player_busted
  puts "You busted!"
  linebreak
end

def display_dealer_busted
  puts "Dealer busted!"
  linebreak
end

def player_turn(hand, deck_values, deck, dealer_visible_hand, score)
  loop do
    score[:player] = calculate_hand_value(hand, deck_values)

    display_player_hand(hand, score[:player])

    display_player_busted if busted?(score[:player])

    break if busted?(score[:player])

    display_visible_dealer_hand(dealer_visible_hand)

    answer = hit_or_stay

    break if answer == 's'

    hit(hand, deck)

    display_new_card_player(hand)
  end
end

def dealer_turn(dealer_hand, deck_values, deck, score)
  loop do
    break if busted?(score[:player])

    score[:dealer] = calculate_hand_value(dealer_hand, deck_values)

    display_full_dealer_hand(dealer_hand, score[:dealer])

    display_dealer_busted if busted?(score[:dealer])

    break if busted?(score[:dealer])

    display_dealer_hit_or_stay(score[:dealer])

    break if dealer_stay?(score[:dealer])

    hit(dealer_hand, deck)

    display_new_card_dealer(dealer_hand)
  end
end

def display_totals(score)
  puts "Player has #{score[:player]} points."
  puts "Dealer has #{score[:dealer]} points."
  linebreak
end

def determine_winner(score)
  winner = if busted?(score[:dealer]) || score[:player] > score[:dealer]
             'player'
           elsif busted?(score[:player]) || score[:dealer] > score[:player]
             'dealer'
           else
             'tie'
           end

  winner
end

def declare_winner(score)
  if determine_winner(score) == 'player'
    puts "Player won!"
  elsif determine_winner(score) == 'dealer'
    puts "Dealer won!"
  elsif determine_winner(score) == 'tie'
    puts "It's a tie!"
  end
end

def play_again?
  answer = ''
  loop do
    linebreak
    puts "Play again? (y or n)"
    answer = gets.chomp.downcase
    break if answer == "yes" || answer == 'y'
    break if answer == "no" || answer == 'n'
    puts "Sorry, that wasn't a valid input."
  end

  true if answer == "yes" || answer == 'y'
end

# MAIN CODE

greeting

full_deck_value = initialize_master_deck_values(SUITS, FACE_CARD_STRINGS)

loop do
  deck = initialize_deck(full_deck_value)

  player = []
  dealer = []

  scoreboard = { player: 0, dealer: 0 }

  deal_cards(deck, player, dealer)

  dealer_visible = dealer_visible_hand(dealer)

  player_turn(player, full_deck_value, deck, dealer_visible, scoreboard)

  dealer_turn(dealer, full_deck_value, deck, scoreboard)

  display_totals(scoreboard)

  declare_winner(scoreboard)

  break unless play_again?

  system 'clear'
end

puts "Thanks for playing 21! Goodbye!"
