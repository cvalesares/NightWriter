class Converter
  attr_reader :input,
              :write_to,
              :read

  #ARGV[0] = original text file
  #ARGV[1] = new braille text file
  def initialize
    @input = ARGV
    @write_to = input[1]
    @read = File.read(input[0])
  end

  def print
    p "$ ruby ./lib/night_writer.rb message.txt #{@write_to}
      Created #{@write_to} containing #{@read.length} characters"
  end

  def create
    File.open("#{@write_to}", "w") do |file|
      #this is hardcoded... needs to return braile
      file.write('test')
    end
    # File.write("#{@write_to}", )
  end
end
