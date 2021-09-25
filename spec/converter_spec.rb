require './lib/converter'

RSpec.describe do
  before(:each) do
    @converter = Converter.new
  end

  it 'exists' do
    expect(@converter).to be_an_instance_of(Converter)
  end

  it 'has readable attributes' do
    expect(@converter.input).to eq(ARGV)
    expect(@converter.write_to).to eq(ARGV[1])
    # expect(@converter.read).to eq('test_file.txt')
  end

  it 'can print' do
    expect(@converter.print).to be_a(String)
  end
end
