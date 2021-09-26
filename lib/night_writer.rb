require './lib/converter.rb'
require './lib/dictionary.rb'
require './lib/dictionary_mod.rb'

converter = Converter.new
dictionary = Dictionary.new
include DictionaryMod

converter.print
converter.create
converter.to_braille

#maybe write command that deletes braille.txt on new entry
