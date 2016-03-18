
def welcome
  puts "Welcome to the Blackjack Table"
  # code #welcome here
end



def deal_card
  dealcard = (rand(11) + 1)
  # code #deal_card here
end



def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
  # code #display_card_total here
end



def prompt_user
  puts "Type 'h' to hit or 's' to stay"
  # code #prompt_user here
end



def get_user_input
  gets.chomp
  # code #get_user_input here
end



def end_game(card_total)
  # code #end_game here
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end



def initial_round
  # code #initial_round here
  card_total = (deal_card + deal_card)
  display_card_total(card_total)
  return card_total
end



def hit?(card_total)
  prompt_user
  z = get_user_input
  case z
  when "s"
    card_total
  when "h"
    card_total += deal_card
  else
    invalid_command
  end
end



def invalid_command
  puts "Please enter a valid command."
end
###############################

def runner
  welcome
  card_total = initial_round
  until card_total > 21
    card_total = hit?(card_total)
    display_card_total(card_total)
  end
end_game(card_total)
end
