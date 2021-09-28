require './lib/converter.rb'
require './lib/dictionary_mod.rb'

converter = Converter.new
include DictionaryMod

converter.print
converter.create
converter.to_braille
