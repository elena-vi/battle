require 'player'

describe Player do

  subject {described_class.new("Bob")}
  it "knows its name" do
    expect(subject.name).to eq "Bob"
  end

  it "know its hp" do
    expect(subject.hp).to eq 100
  end

  it "can be attacked" do
    subject.attacked
    expect(subject.hp).to eq 90
  end
end