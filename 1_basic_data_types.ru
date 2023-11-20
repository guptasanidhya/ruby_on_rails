puts "Hello World!"#adds a new line character
print "Hello, """#doesn't add new line character
print "World!"

################################################################
#numbers, strings,symbools, booleans
puts 17/5
puts 17/5.5
puts 13.to_f
puts 13.0001.to_i
puts 6.even?
puts 5.odd?

#Strings
# With the plus operator:
puts "Welcome " + "to " + "Odin!"    #=> "Welcome to Odin!"

# With the shovel operator:
puts  "Welcome " << "to " << "Odin!"  #=> "Welcome to Odin!"

puts "Welcome ".concat("to ").concat("Odin!" )

#sub string

puts "hello"[0]      #=> "h"

puts "hello"[0..1]   #=> "he"

puts "hello"[0, 4]   #=> "hell"

puts "hello"[-1]     #=> "o"

#escape sequences
"""
\\  #=> Need a backslash in your string?
\b  #=> Backspace
\r  #=> Carriage return, for those of you that love typewriters
\n  #=> Newline. You'll likely use this one the most.
\s  #=> Space
\t  #=> Tab
\"  #=> Double quotation mark
\'  #=> Single quotation mark
"""
puts "Hello \n\nHello"  

#Interpolation
name = "Odin"

puts "Hello, #{name}" #=> "Hello, Odin"
puts 'Hello, #{name}' #=> "Hello, #{name}"
# Be sure to use double quotes so that string interpolation will work!
#Common string methods
#capitalize

puts "hello".capitalize #=> "Hello"
#include?

puts "hello".include?("lo")  #=> true

puts "hello".include?("z")   #=> false
#upcase

puts "hello".upcase  #=> "HELLO"
#downcase

puts "Hello".downcase  #=> "hello"
#empty?

puts "hello".empty?  #=> false

puts "".empty?       #=> true
#length

puts "hello".length  #=> 5
#reverse

puts "hello".reverse  #=> "olleh"
#split

puts "hello world".split  #=> ["hello", "world"]

puts "hello".split("")    #=> ["h", "e", "l", "l", "o"]
#strip

puts " hello, world   ".strip  #=> "hello, world"

puts "he77o".sub("7", "l")           #=> "hel7o"

puts "he77o".gsub("7", "l")          #=> "hello"

puts "hello".insert(-1, " dude")     #=> "hello dude"

puts "hello world".delete("l")       #=> "heo word"

puts "!".prepend("hello, ", "world") #=> "hello, world!"

# Converting other objects to strings
puts 5.to_s        #=> "5"

puts nil.to_s      #=> ""

puts :symbol.to_s  #=> "symbol"

#symbols 
#symbols vs strings
puts "string" == "string"  #=> true

puts "string".object_id == "string".object_id  #=> false

puts :symbol.object_id == :symbol.object_id    #=> true