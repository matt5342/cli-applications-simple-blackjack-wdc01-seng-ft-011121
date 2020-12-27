require 'pry'
def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  rand 1..11
end

def display_card_total(total)
  # code #display_card_total here
  puts "Your cards add up to #{total}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  gets.chomp
end

def end_game(total)
  # code #end_game here
  puts "Sorry, you hit #{total}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  card1 = deal_card
  card2 = deal_card
  sum = card1 + card2
  display_card_total(sum)
  sum
end

def invalid_command
  # code invalid_command here
  puts "Please enter a valid command"
end

def hit?(current_total)

  total = current_total
  prompt_user
  input = get_user_input

  while input != 'h' && input != 's' do
    invalid_command
    prompt_user
    input = get_user_input
  end
    if input == 'h'
      total += deal_card
    else input == 's'
      return total
    end  
  return total

end



#####################################################
# get every test to pass before coding runner below #
#####################################################
# 1. Welcome the user
# 2. Deal them their first two cards, i.e. their `initial_round`
# 3. Ask them if they want to hit or stay
# 4. If they want to stay, ask them again!
# 5. If they want to hit, deal another card and display the new total
# 6. If their card total exceeds 21, the game ends.
def runner
  # code runner here
  welcome
  total = initial_round
  until total > 21 do
  total = hit?(total)
  display_card_total(total)
end
end_game(total)
  
end
    
