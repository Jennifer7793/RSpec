RSpec.describe 'test-configure' do
  it "would not be tested" do
    expect(5).to eq(5)
  end

  fit 'would be focus and test' do
    expect(5).to eq(5)
  end
end