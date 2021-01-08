require 'pry'

# 1. Initialize deck

# 2. Deal cards to player and dealer
# 3. Player turn: hit or stay
#   - repeat until bust or "stay"
# 4. If player bust, dealer wins.
# 5. Dealer turn: hit or stay
#   - repeat until total >= 17
# 6. If dealer bust, player wins.
# 7. Compare cards and declare winner.

SUITS = ['hearts', 'clubs', 'diamonds', 'spades']
FACE_CARD_STRINGS = ['1', '2', '3', '4', '5', '6', '7', '8', '9', 'jack', 'queen', 'king', 'ace']

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
  puts "Player has #{joinand(player_hand)} worth a total of #{value.to_s}."
end

def dealer_visible_total(dealer_hand)

end

def display_dealer_card(dealer_hand)
  puts "Dealer has unknown card and #{joinand(dealer_visible_total(dealer_hand))} worth a total of "
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

def busted?(hand_value)
  true if hand_value > 21
end

def display_busted(player_hand, value)
  puts "You busted! Computer wins!"
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

loop do

  full_deck_values = initialize_master_deck_values(SUITS, FACE_CARD_STRINGS)

  playing_deck = initialize_deck(full_deck_values)

  player = []
  dealer = []
  player_hand_value = nil
#  dealer_hand_value = nil

  deal_cards(playing_deck, player, dealer)

  loop do
    player_hand_value = calculate_hand_value(player, full_deck_values)
    display_player_hand(player, player_hand_value)
    display_busted(player, player_hand_value) if busted?(player_hand_value)
    break if busted?(player_hand_value)

    answer = hit_or_stay
    break if answer == 'stay'

    hit(player, playing_deck)
  end

  break unless play_again?
end
# display_dealer_card(dealer)

# player_hit_or_stay(player)

# display_player_hand(player)

# diaplay_dealer_hand(dealer)
