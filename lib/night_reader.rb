require './lib/converter.rb'
require './lib/dictionary_mod.rb'

converter = Converter.new
include DictionaryMod

converter.print
converter.create
converter.from_braille

#maybe write command that deletes braille.txt on new entry
