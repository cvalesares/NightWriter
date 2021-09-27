require './lib/dictionary_mod'

class Converter
  include DictionaryMod
  attr_reader :input,
              :write_to,
              :read
              # :top,
              # :middle,
              # :bot

  #ARGV[0] = original text file
  #ARGV[1] = new braille text file
  def initialize
    @input = ARGV
    @write_to = input[1]
    @read = File.read(input[0])
    # @middle = []
    # @bot = []
    # @dictionary = Dictionary.new
  end

  def print
    p "$ ruby ./lib/night_writer.rb message.txt #{@write_to}
      Created #{@write_to} containing #{@read.length} characters"
  end

  def create
    File.open("#{@write_to}", "w") do |file|
      #this is hardcoded... needs to return braile helper method
      file.write('test')
    end
  end

  def to_braille
    results = []
    input_text = @read.split("")
    input_text.each do |letter|
        define.keys.include?(letter)
        results << define[letter]
    end
    results
    File.write("#{@write_to}", results.compact.transpose)
  end

  def from_braille
    results = []
    input_text = @read.tr('",[]', '').split(' ')
    modified_input = input_text.each_slice((input_text.length / 3)).to_a.transpose
    #above is formatted correctly... now just need to correctly shovel into the array
    modified_input.each do |braille|
      # require "pry"; binding.pry
      define.invert.keys.include?(braille)
      results << define.invert[braille]
    end
    results
    # require "pry"; binding.pry
    File.write("#{@write_to}", results)
  end

  # def wrap_text
  #   #if chars >= 40
  #     #split?
  #   end
  # end
end
