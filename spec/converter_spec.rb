require 'simplecov'
SimpleCov.start
require './lib/converter'
require './lib/dictionary_mod'

RSpec.describe do
  before(:each) do
    @converter = Converter.new
    @result = 'this string here'

  end

  it 'exists' do
    expect(@converter).to be_an_instance_of(Converter)
  end

  it 'has readable attributes' do
    expected = ['message.txt', 'braille.txt']
    expected2 = 'braille.txt'

    expect(@converter.input).to eq(expected)
    expect(@converter.write_to).to eq(expected2)
    # expect(@converter.read).to eq('test_file.txt')
  end

  xit 'can print' do
    expect(@converter.print).to be_a(String)
  end

  xit 'can convert to braille' do
    expect(@converter.to_braille).to eq(ARGV[1])
  end

  xit 'can convert from braille' do
    expect(@converter.from_braille).to be_a(String)
  end

  it 'can wrap text' do
    @converter.wrap_text
    expect(@converter.wrap_text).to be_a(String)
  end
end
