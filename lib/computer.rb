class Computer

  attr_reader :choice
  def random_choice
    @choice = ['Rock', 'Paper', 'Scissors'].sample
  end

end
