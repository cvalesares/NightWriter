class Converter
  attr_reader :input,
              :write_to,
              :read

  def initialize
    @input = ARGV
    @write_to = input[1]
    @read = File.read(input[0])
  end

  def print
    p "$ ruby ./lib/night_writer.rb message.txt #{@write_to}
      Created #{@write_to} containing #{@read.length} characters"
  end
end
