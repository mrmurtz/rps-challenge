class Player

  attr_reader :name

  def initialize(name)
    @name = name
  end

  def choice(hand)
    @choice = hand
  end
end
