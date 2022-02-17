RSpec.shared_examples "Object with three elements" do
  it "return length of subject" do
    expect(subject.length).to eq(3)
  end
end

RSpec.describe Hash do
  subject {{a: 1, b: 2, c: 3}}
  include_examples "Object with three elements"
end

RSpec.describe Array do
  subject {[1, 2, 3]}
  include_examples "Object with three elements"
end

RSpec.describe String do
  subject {"abc"}
  include_examples "Object with three elements"
end