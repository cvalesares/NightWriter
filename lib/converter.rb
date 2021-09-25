class Converter
  attr_reader :input

  def initialize
    @input = ARGV.first
  end


  def print
    p "$ ruby ./lib/night_writer.rb message.txt #{input}
      Created 'braille.txt' containing 256 characters"
  end
end
