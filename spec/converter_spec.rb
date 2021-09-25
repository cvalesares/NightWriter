require './lib/converter'

RSpec.describe do
  before(:each)do
    @converter = Converter.new
  end

  it 'exists' do
    expect(@converter).to be_an_instance_of(Converter)
  end

  it 'can print' do
    expect(@converter.print).to be_a(String)
  end
end
