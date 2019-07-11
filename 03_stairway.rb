# Start to play
def askGame
  puts "Do you wanna play a game? (YES/NO)"
  answer = "yes"
  return answer
end



# Roll
def rollDice(answer)
    puts "Great ! Roll the dice!"
    sleep 1
    dice = rand(1..6)
    puts "Your number is #{dice}"
  return dice
end
# End Roll

# Begin choseMove
def choseMove(dice, step)
  if (dice == 5) || (dice == 6)
    step = goUp(step)
  elsif dice == 1
    step = goDown(step)
  else
    step = dontMove(step)
  end
  return step
end
# End choseMove




# Begin Moves
def goUp(step)
  step += 1
  puts "You can move forward!"
  sleep 1
  puts "You are now on the step number: #{step}"
  return step
end

def goDown(step)
  step -= 1
  puts "You have to step back!"
  sleep 1
  puts "Your are on the step number: #{step}"
  return step
end

def dontMove(step)
  puts "You should not move!"
  sleep 1
  puts "Your are still on the step number: #{step}"
  return step
end
# End moves #


# Perform function
def perform
  count = 0
  while count < 100
  count += 1
  step = 0
    while step < 10
      answer = askGame
      play = rollDice(answer)
      step = choseMove(play, step)
    end
  end
end


perform
