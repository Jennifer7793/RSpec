RSpec.describe Burger do
  it 'has meat' do
    burger = Burger.new('Beef', 'Cheddar')
    expect(burger.meat).to eq('Beef')
  end

  it 'has cheese' do
    burger = Burger.new('Beef', 'Cheddar')
    expect(burger.cheese).to eq('Cheddar')
  end
end

# RSpec.describe 'Burger' do
#   it 'has a type' do
#     burger = Burger.new('Big mac')
#     expect(burger.type).to eq('Big mac')
#   end
# end
