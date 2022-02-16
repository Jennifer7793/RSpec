class Burger
  attr_accessor :type
  def initialize(type = "small")
    @type = type
  end
end

RSpec.describe Burger do
  let(:burger) { Burger.new("Big") }
  
  it "type will be Big" do
    expect(burger.type).to eq("Big")
  end

  context "when we didn't give argument" do
    let(:burger) { Burger.new }
    it "type will be small" do
      expect(burger.type).to eq("small")
    end
  end
end