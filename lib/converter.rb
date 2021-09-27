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
    input_text = File.read("message.txt").split("")
    input_text.each do |letter|
        define.keys.include?(letter)
        results << define[letter]
    end
    results
    File.write("#{@write_to}", results.compact.transpose)
  end

  def from_braille
    results = []
    input_text = File.read("braille.txt").tr('",[]', '').split(' ')
    input_text.each do |braille|
      # require "pry"; binding.pry
      define.invert.keys.include?(braille)
      results << define.invert[braille]
    end
    results
    File.write("#{@write_to}", results.compact.transpose)
  end

  # def wrap_text
  #   #if chars >= 40
  #     #split?
  #   end
  # end
end
