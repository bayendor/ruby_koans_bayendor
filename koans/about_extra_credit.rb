# EXTRA CREDIT:
#
# Create a program that will play the Greed Game.
# Rules for the game are in GREED_RULES.TXT.
#
# You already have a DiceSet class and score function you can use.
# Write a player class and a Game class to complete the project.  This
# is a free form assignment, so approach it however you desire.

class DiceSet
  def roll(num_of_rolls)
    @dice_array = []
    num_of_rolls.times { @dice_array.push(1 + rand(6)) }
  end

  def values
    @dice_array
  end
end

def score(dice)
  sum = 0
  (1..6).each do |rolls|
    die = dice.select { |die_value| die_value == rolls }
    if die.size >= 3
      sum += (rolls==1 ? 1000 : rolls*100)
    end
    if rolls == 1
      sum += (die.size % 3) * 100
    end
    if rolls == 5
      sum += (die.size % 3) *  50
    end
  end
  sum
end


