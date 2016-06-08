require 'game'

describe Game do

  let(:player1) { double :player }
  let(:player2) { double :player }

  subject {described_class.new(player1, player2)}

  it "knows how to attack players" do
    expect(player1).to receive(:attacked)
    subject.attack(player1)
  end
end