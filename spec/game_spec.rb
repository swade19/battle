require "game"
describe Game do
  let(:game) { Game.new }
  subject(:dave) { Player.new("Dave") }

  it "hits a particular player for -10hp" do
    expect { game.hit(dave) }.to change { dave.hit_points }.by(-10)
  end
end
