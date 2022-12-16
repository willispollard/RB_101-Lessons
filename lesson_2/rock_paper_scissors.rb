VALID_CHOICES = ['rock', 'paper', 'scissors', 'lizard', 'spock']

ABBRV_CHOICES = ['r', 'p', 'sc', 'l', 'sp']

def prompt(message)
  puts("=> #{message}")
end

WINNING_COMBOS = {
  'rock' => ['scissors', 'lizard'],
  'paper' => ['rock', 'spock'],
  'scissors' => ['paper', 'lizard'],
  'lizard' => ['spock', 'paper'],
  'spock' => ['scissors', 'rock']
}

def win?(choice, computer_choice)
  WINNING_COMBOS[choice].include?(computer_choice)
end

=begin
def win?(first, second)
  (first == 'rock' && (second == 'scissors' || second == 'lizard')) ||
    (first == 'paper' && (second == 'rock' || second == 'spock')) ||
    (first == 'scissors' && (second == 'paper' || second == 'lizard')) ||
    (first == 'lizard' && (second == 'spock' || second == 'paper')) ||
    (first == 'spock' && (second == 'scissors' || second == 'rock'))
end
=end

def display_result(player, computer)
  if win?(player, computer)
    prompt("You win this round!")
  elsif win?(computer, player)
    prompt("Computer wins this round!")
  else
    prompt("This round's a tie!")
  end
end

def endgame(player_score, computer_score)
  if player_score == 3
    prompt("You won the match!")
  elsif computer_score == 3
    prompt("Computer won the match!")
  end
end

loop do
  choice = ''
  player_score = 0
  computer_score = 0
  draws = 0
  loop do
    loop do
      prompt("Choose one: #{VALID_CHOICES.join(', ')}")
      choice = gets.chomp

      case choice
      when 'r'
        choice = 'rock'
      when 'p'
        choice = 'paper'
      when 'sc'
        choice = 'scissors'
      when 'l'
        choice = 'lizard'
      when 'sp'
        choice = 'spock'
      end

      if VALID_CHOICES.include?(choice) || ABBRV_CHOICES.include?(choice)
        break
      else
        prompt("That's not a valid choice.")
      end
    end

    computer_choice = VALID_CHOICES.sample

    prompt("You chose: #{choice}; Computer chose: #{computer_choice}")

    display_result(choice, computer_choice)

    if win?(choice, computer_choice)
      player_score += 1
    elsif win?(computer_choice, choice)
      computer_score += 1
    else
      draws += 1
    end
    puts("---- Player: #{player_score}")
    puts("---- Computer: #{computer_score}")
    puts("---- Draws: #{draws}")

    endgame(player_score, computer_score)

    break if player_score == 3 || computer_score == 3
  end

  prompt("Do you want to play again?")
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt("Thank you for playing! Goodbye.")
