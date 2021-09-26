require './lib/dictionary'

RSpec.describe do
  before(:each) do
    @dictionary = Dictionary.new
  end

  it 'exists' do
    expect(@dictionary).to be_an_instance_of(Dictionary)
  end

  it 'compares english to braille' do
    @top_row = {
      'a' => '0.',
      'b' => '0.',
      'c' => '00'}
    expect(@top_row["a"]).to eq('0.')
  end
end
