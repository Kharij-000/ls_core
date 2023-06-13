VALID_PLAYERS = ['rock', 'paper', 'scissors', 'lizard', 'spock']


def prompt(message)
  puts("=> #{message}")
end

def win?(p_1, p_2)
  (p_1 == 'rock' && p_2 == 'scissors') || 
    (p_1 == 'rock' && p_2 == 'lizard') ||#worked
    (p_1 == 'paper' && p_2 == 'rock') ||
    (p_1 == 'paper' && p_2 == 'spock') ||
    (p_1 == 'scissors' && p_2 == 'paper') ||
    (p_1 == 'scissors' && p_2 == 'lizard') ||#worked
    (p_1 == 'lizard' && p_2 == 'spock') ||#worked
    (p_1 == 'lizard' && p_2 == 'paper') ||
    (p_1 == 'spock' && p_2 == 'rock') ||
    (p_1 == 'spock' && p_2 == 'scissors')
end


def results(cpu, player2)
  if win?(cpu, player2)
    prompt('CPU Wins!')
  elsif win?(player2, cpu)
    prompt('Player Wins!')
  else
    prompt("It's a draw!")
  end
end

loop do
  prompt('Hello and Welcome to Rock, Paper, Scissors')
  loop do
    prompt("Choose one: #{VALID_PLAYERS.join(', ')}")
    player = gets.chomp
    loop do
      break if VALID_PLAYERS.include?(player)

      prompt('Please enter one of the following valid players!')
      prompt(VALID_PLAYERS.join(', '))
      player = gets.chomp
    end
    computer = VALID_PLAYERS.sample
    prompt("The CPU chose #{computer} and you chose #{player}")
    results(computer, player)
    break
  end
  prompt('Do you want to play again?')
  play_again = gets.chomp
  break unless play_again == 'Y'
end