# Richard Tillies
# October 18, 2021
# Ship class
# ~/turing/1module/projects/battleship/lib/ship.rb

class Ship
  attr_reader :name, :length

  def initialize(name, length)
    @name = name
    @length = length
    @health = length
  end

  def health
    @health
  end

  def sunk?
    @health == 0
  end

  def hit
    @health -= 1
  end
end
