RSpec.describe Hash do 
  subject(:jen) do 
    {a: 3, b: 4}
  end

  it 'should be empty' do
    expect(subject.length).to eq(2)
    expect(jen.length).to eq(2)
  end
end

# RSpec.describe Hash do
#   it 'should be empty' do
#     p subject
#     p subject.class
#     expect(subject.length).to eq(0)
#   end
# end