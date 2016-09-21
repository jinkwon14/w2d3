require 'rspec'
require 'hanoi'

# describe "#stock_picker" do
#   subject(:good_day) {stock_picker([100,4000,2500,1500,2000,300])}
#   it "picks the most profitable days" do
#     expect(good_day).to eq([0,1])
#   end
# end

describe "Hanoi" do
  subject(:game) {Hanoi.new}

  describe "#initialize" do

    context "when number of disc not specified" do
      it "sets disc number to 3" do
        expect(game.disc_num).to eq(3)
      end

    context "when number of disc is given" do
      subject(:game_4) {Hanoi.new(4)}
      it "sets disc number to given number" do
        expect(game_4.disc_num).to eq(4)
      end
    end

    end

  end

  describe "#move" do

    before(:each) {game.move(0,1)}
    it "moves disc" do
      expect(game.pile).to eq([[3,2],[1],[]])
    end
  end

  describe "#won?" do
    it "it return false if game is not finished" do
      3.times {game.move(0, 1)}
      expect(game.won?).to be false
    end

    it "it returns true if game is over" do
      game.pile[0].clear
      game.pile[1] = [3, 2, 1]
      expect(game.won?).to be true
    end
  end

  describe "#valid_move?" do
    it "returns true if the move is valid" do
      game.move(0,1)
      expect(game.valid_move?(0,1)).to be false
    end
  end




end
