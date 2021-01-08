SUITS = ['Hearts', 'Clubs', 'Diamonds', 'Spades']
FACE_CARD_STRINGS = ['1', '2', '3', '4', '5', '6', '7', '8', '9', 'Jack', 'Queen', 'King', 'Ace']

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

def assign_card_value(hash)
  hash.each_key do |key|
    if (2..9).include?(key[0].to_i)
      hash[key] = key[0].to_i
    elsif key[0..2] == 'ace'
      hash[key] = [1, 11]
    else
      hash[key] = 10
    end
  end
  hash
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

def aces(current_hand_value, ace_card, deck_hash)
  ace_value = nil
  if current_hand_value > 10
    ace_value = deck_hash[ace_card][0]
  else
    ace_value = deck_hash[ace_card][1]
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
end

def hit_or_stay
  answer = nil
  loop do
    puts "Hit or stay?"
    answer = gets.chomp
    break if answer.downcase == "hit" || answer.downcase == "stay"
    puts "Invalid answer, please choose 'hit' or 'stay'."
  end

  if answer == "stay"
    puts "You chose to stay."
  else
    puts "You chose to hit."
  end

  answer
end

def hit(player_hand, card_deck)
  player_hand << card_deck.pop
end

def display_new_card_player(hand)
  puts "You drew #{hand.last}."
end

def display_new_card_dealer(hand)
  puts "Dealer drew #{hand.last}."
end

def display_dealer_hit_or_stay(value)
  if value < 17
    puts "Dealer hits."
  else
    puts "Dealer stays."
  end
end

def dealer_stay?(value)
  true if value >= 17
end

def busted?(hand_value)
  true if hand_value > 21
end

def display_player_busted(value)
  puts "You busted!"
end

def display_dealer_busted(value)
  puts "Dealer busted!"
end

def player_turn(hand, deck_values, deck, dealer_visible_hand)
  loop do
    player_hand_value = calculate_hand_value(hand, deck_values)

    display_player_hand(hand, player_hand_value)

    display_player_busted(player_hand_value) if busted?(player_hand_value)

    break if busted?(player_hand_value)

    display_visible_dealer_hand(dealer_visible_hand)

    answer = hit_or_stay

    break if answer == 'stay'

    hit(hand, deck)

    display_new_card_player(hand)
  end
end

def dealer_turn(dealer_hand, deck_values, deck, player_hand)
  loop do
    break if busted?(calculate_hand_value(player_hand, deck_values))

    dealer_hand_value = calculate_hand_value(dealer_hand, deck_values)

    display_full_dealer_hand(dealer_hand, dealer_hand_value)

    display_dealer_busted(dealer_hand_value) if busted?(dealer_hand_value)

    break if busted?(dealer_hand_value)

    display_dealer_hit_or_stay(dealer_hand_value)

    break if dealer_stay?(dealer_hand_value)

    hit(dealer_hand, deck)

    display_new_card_dealer(dealer_hand)
  end
end

def display_totals(player_hand, dealer_hand, deck_values)
  dealer_score = calculate_hand_value(dealer_hand, deck_values)
  player_score = calculate_hand_value(player_hand, deck_values)

  puts "Player has #{player_score} points. Dealer has #{dealer_score} points."
end

def declare_winner(player_hand, dealer_hand, deck_values)
  dealer_score = calculate_hand_value(dealer_hand, deck_values)
  player_score = calculate_hand_value(player_hand, deck_values)

  if busted?(dealer_score)
    puts "Player won!"
  elsif busted?(player_score)
    puts "Dealer won!"
  elsif dealer_score > player_score
    puts "Dealer won!"
  elsif player_score > dealer_score
    puts "Player won!"
  else
    puts "You tied!"
  end
end

def play_again?
  answer = ''
  loop do
    puts "Play again? (y or n)"
    answer = gets.chomp.downcase
    break if answer == "yes" || answer == 'y'
    break if answer == "no" || answer == 'n'
    puts "Sorry, that wasn't a valid input."
  end

  true if answer == "yes" || answer == 'y'
end

# MAIN CODE

puts "Welcome to 21!"
full_deck_value = initialize_master_deck_values(SUITS, FACE_CARD_STRINGS)

loop do
  deck = initialize_deck(full_deck_value)

  player = []
  dealer = []

  deal_cards(deck, player, dealer)

  dealer_visible = dealer_visible_hand(dealer)

  player_turn(player, full_deck_value, deck, dealer_visible)

  dealer_turn(dealer, full_deck_value, deck, player)

  display_totals(player, dealer, full_deck_value)

  declare_winner(player, dealer, full_deck_value)

  break unless play_again?
end
