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
    if (1..9).include?(key[0].to_i)
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
  player_hand << card_deck.pop
end

def joinand(arr)
  string = ''
  if arr.length == 1
    string = arr.join
  elsif arr.length == 2
    string = ' and ' + arr.pop
    first_numbers = arr.join
    string = first_numbers + string
  elsif arr.length >= 3
    string = ' and ' + arr.pop
    first_numbers = arr.join(', ')
    string = first_numbers + string
  end
  string
end

def hand_value(cards, deck_hash)
  total = 0
  cards.each { |card| total += deck_hash[card] }
  total
end

def display_player_hand(player_hand)
  # puts "Player has #{joinand(player_hand)} worth a total of #{hand_value(player_hand).to_s}."
end

def display_dealer_card(dealer_hand)

end

def player_hit_or_stay(player_hand)

end

# MAIN CODE

full_deck_values = initialize_master_deck_values(SUITS, FACE_CARD_STRINGS)

playing_deck = initialize_deck(full_deck_values)

player = []
dealer = []

deal_cards(playing_deck, player, dealer)

p player

p hand_value(player, full_deck_values)


# display_player_hand(player)

# display_dealer_card(dealer)

# player_hit_or_stay(player)

# display_player_hand(player)

# diaplay_dealer_hand(dealer)



