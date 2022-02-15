class Store
  attr_reader :name
  def initialize(name)
    @name = name
  end

  def sell
    'Earn lots of money'
  end
end

RSpec.describe Store do
  let(:store) { Store.new('Jen Store') }
  it 'have name' do
    expect(store.name).to eq 'Jen Store'
  end

  it 'sell project' do
    expect(store.sell).to eq 'Earn lots of money'
  end
end

# class Store
#   def initialize(name)
#     @name = name
#   end

#   def name
#     @name
#   end

#   def sell
#     'Earn lots of money'
#   end
# end

# RSpec.describe Store do
#   it 'have name' do
#     store = Store.new 'Jen Store'
#     expect(store.name).to eq 'Jen Store'
#   end

#   it 'sell project' do
#     store = Store.new 'Jen Store'
#     expect(store.sell).to eq 'Earn lots of money'
#   end
# end