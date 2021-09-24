# NightWriter

## Reqs + Recommendeds
* look up ARGV from command line
* Passing = Working (through IT3)
* File names need to be dynamic
* At least 3 classes (2 if you can defend why)
* Use SimpleCov to get test coverage between 98-100%
* MINIMUM OF 30 COMMITS
* Use branches and PR's like normal

## Setup
The general pattern is that we will run the program, providing an existing file for input, and the name of a nonexistent file for output, and the program will provide us with a confirmation:
* $ ruby ./lib/night_writer.rb message.txt braille.txt
  Created 'braille.txt' containing 256 characters

  That will use the plaintext file message.txt to create a Braille simulation file braille.txt.

## Iteration 1
* ./lib/night_writer.rb is the path to your Ruby program.
* message.txt is the name of an existing text file in your project directory.
* braille.txt is the name that we would like to give to a file that we will create in iteration 2.
* 256 is the count of characters in your message.txt file.

In order to break this problem down further, you may wish to work on things in the following order:

* Create a Ruby program that prints the sample line of text provided above no matter what arguments are provided from the command line.
* Update your existing program so that the name of the file that it prints out changes based on the second input that the user provides from the command line.
* Further update your program so that the number of characters it prints out changes based on the number of characters in the file that the user provides as the first argument that the user provides from the command line.
