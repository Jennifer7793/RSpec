class Burger
  attr_accessor :meat, :cheese
  def initialize(meat, cheese)
    @meat = meat
    @cheese = cheese
  end
end

RSpec.shared_context "common_burger" do
  before do
    @big_mac = Burger.new("Beef", "Cheddar")
  end

  def shrimp_burger
    @shrimp_burger = Burger.new("Shrimp", "Mozarella")
  end

  let(:pork_burger) { Burger.new("Pork", "Pecorino")}
end

RSpec.describe Burger do
  include_context "common_burger"

  it "return shrimp" do
    expect(shrimp_burger.meat).to eq("Shrimp")
  end

  it "have big mac" do
    expect(@big_mac.meat).to eq("Beef")
  end
end
# RSpec.shared_examples "Object with three elements" do
#   it "return length of subject" do
#     expect(subject.length).to eq(3)
#   end
# end

# RSpec.describe Hash do
#   subject {{a: 1, b: 2, c: 3}}
#   include_examples "Object with three elements"
# end

# RSpec.describe Array do
#   subject {[1, 2, 3]}
#   include_examples "Object with three elements"
# end

# RSpec.describe String do
#   subject {"abc"}
#   include_examples "Object with three elements"
# end