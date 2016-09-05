require 'player'

describe Player do
  let(:player) { described_class.new('Murtz')}

  describe '#name' do
    it "initialises with a name" do
      expect(player.name).to eq 'Murtz'
    end
  end

  describe '#choice' do
    it "#choice accepts a choice of rps" do
      expect(player.choice('Rock')).to eq 'Rock'
    end
  end
end
