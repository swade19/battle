require_relative "../lib/player"

describe Player do
  subject(:dave) { Player.new("Dave") }
  describe "#name" do
    it "returns the name" do
      expect(dave.name).to eq "Dave"
    end
  end

  describe "#hit_points" do
    it "returns the hit points" do
      expect(dave.hit_points).to eq described_class::DEFAULT_HIT_POINTS
    end
  end

  describe "#take_damage" do
    it "damages the player by reducing hit points by 10" do
      expect { dave.take_damage }.to change { dave.hit_points }.by(-10)
    end
  end
end
