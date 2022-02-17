RSpec.describe 5 do
  it 'should b 5' do
    expect(subject).to eq(5)
  end

  context 'one line syntax' do
    it { is_expected.to eq(5) }
  end
end