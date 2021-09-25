input = ARGV
write_to = input[1]
read = File.read(input[0])

p "$ ruby ./lib/night_writer.rb message.txt #{write_to}
    Created 'braille.txt' containing #{read.length} characters"
