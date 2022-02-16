RSpec.describe Hash do
  it 'should be empty' do
    p subject
    p subject.class
    expect(subject.length).to eq(0)
  end
end