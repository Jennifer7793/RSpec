RSpec.describe "before and after hooks" do
  before(:context) do
    p "OUTER Before context"
  end

  before(:example) do
    p "OUTER Before example"
  end

  it "will pass" do
    expect(1 + 1).to eq(2)
  end

  context "when it can pass" do
    before(:context) do
      p "INNER Before context"
    end

    before(:example) do
      p "INNER Before example"
    end

    it "will pass too" do
      expect(2 + 2).to eq(4)
    end
  end
end

# RSpec.describe "before and after hooks" do
#   before(:example) do
#     p "before example"
#   end

#   before(:context) do
#     p "before context"
#   end

#   after(:example) do
#     p "after example"
#   end

#   after(:context) do
#     p "after context"
#   end

#   it "test for before and after" do
#     expect(1 + 1).to eq(2)
#   end
# end

# RSpec.describe "before and after hooks" do
#   before(:example) do
#   end

#   after(:example) do
#     p @array
#     p @array.clear
#   end

#   it "test for before and after" do
#     @array = []
#     p "Inner #{@array}"
#     @array << '1'
#     expect(1 + 1).to eq(2)
#   end
# end

# RSpec.describe "before and after hooks" do
#   before(:example) do
#     p "before hooks"
#   end

#   after(:example) do
#     p "after hooks"
#   end

#   it "test for before and after" do
#     p "inner example"
#     expect(1 + 1).to eq(2)
#   end
# end