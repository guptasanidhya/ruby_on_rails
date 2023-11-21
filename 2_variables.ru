# bad
a = 19
string = "John"

# good
age = 19
name = "John"
can_swim = false

desired_location = "Barcelona"
johns_location = desired_location

desired_location  #=> "Barcelona"
johns_location    #=> "Barcelona"

puts desired_location
puts johns_location

johns_location.upcase!  #=> "BARCELONA"

desired_location        #=> "BARCELONA"
johns_location          #=> "BARCELONA"
#it uses in place modifications
puts desired_location
puts johns_location
