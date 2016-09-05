require 'game'

describe Game do

  let(:player1) {double :player1}
  let(:computer) {double :computer}

  describe '#create' do
    it "creates a new game instance" do
      expect(described_class).to receive(:new)
      described_class.create(player1, computer)
    end
  end

  describe '#instance' do
    it '#instance returns nil when first called' do
      expect(described_class.instance).to eq nil
    end

    it "returns the game instance when called after instantiation" do
      game = described_class.create(player1, computer)
      expect(described_class.instance).to eq game
    end
  end
end
