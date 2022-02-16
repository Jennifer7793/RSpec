RSpec.describe "before and after hooks" do
  before(:example) do
    p "before hooks"
  end

  after(:example) do
    p "after hooks"
  end

  it "test for before and after" do
    p "inner example"
    expect(1 + 1).to eq(2)
  end
end