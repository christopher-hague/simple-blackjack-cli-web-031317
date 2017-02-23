def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(11) + 1
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(num)
  puts "Sorry, you hit #{num}. Thanks for playing!"
end

def initial_round
  initial_sum = deal_card + deal_card
  display_card_total(initial_sum)
  return initial_sum
end

def hit?(card_total)
  prompt_user
  user_input = get_user_input

  if user_input == "h"
    card_total += deal_card
  else
    card_total
  end
end

def invalid_command
  # code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  hand = initial_round

  until hand > 21
    hand = hit?(hand)
    display_card_total(hand)
  end

  end_game(hand)
end
