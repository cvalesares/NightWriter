require './lib/dictionary_mod'

class Converter
  include DictionaryMod
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

  def create
    File.open("#{@write_to}", "w") do |file|
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
    modified_input.each do |braille|
      define.invert.keys.include?(braille)
      results << define.invert[braille]
    end
    results
    File.write("#{@write_to}", results.join)
  end

  # def wrap_text
  #   require "pry"; binding.pry
  #   to_braille.map do |row|
  #     # require "pry"; binding.pry
  #     join = row.join('')
  #     if rj.size > 80
  #     end
  #   end
  # end
end
