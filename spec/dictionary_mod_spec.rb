require './lib/dictionary_mod'

RSpec.describe do
  before(:each) do
    @dictionary = DictionaryMod.new
  end

  it 'exists' do
    expect(@dictionary).to be_an_instance_of(DictionaryMod)
  end
end
