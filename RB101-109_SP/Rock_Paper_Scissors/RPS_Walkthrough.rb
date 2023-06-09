# constants
VALID_PLAYERS = ['rock', 'paper', 'scissors']

def prompt(message)
  puts("=> #{message}")
end

def results(player, computer)
  case
  when computer == player
    prompt('WOW its a draw!!')
  when player == 'rock' && computer == 'scissors'
    prompt('Player 1 Wins!!')
  when player == 'rock' && computer == 'paper'
    prompt('Sorry Your Lose')
  when player == 'paper' && computer == 'rock'
    prompt('Congrats You Win!')
  when player == 'paper' && computer == 'scissors'
    prompt('Sorry You Lose')
  when player == 'scissors' && computer == 'paper'
    prompt('Congrats You Win!!')
  when player == 'scissors' && computer == 'rock'
    prompt('Sorry You Lose')
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
    results(player, computer)
    break
  end
  prompt('Do you want to play again?')
  play_again = gets.chomp
  break unless play_again == 'Y'
end
