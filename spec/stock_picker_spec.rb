require 'rspec'
require 'stock_picker'

# describe "#remove_dups" do
#   it "remove duplicates from the input" do
#     expect(remove_dups([1,2,1,3,3])).to eq([1,2,3])
#   end
# end

describe "#stock_picker" do
  subject(:good_day) {stock_picker([100,4000,2500,1500,2000,300])}
  it "picks the most profitable days" do
    expect(good_day).to eq([0,1])
  end
end
