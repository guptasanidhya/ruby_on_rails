my_hash={

"a random word"=>"GOT",
"dothraki's power"=>97,
"an array"=>[1,2,3],
"an empty hash within a hash"=>{}
}

#Example 1: Default Value for Non-Existent Keys
# Creating a hash with a default value of 0
my_hash = Hash.new(0)

# Adding values to the hash
my_hash["apple"] = 3
my_hash["banana"] = 2

# Accessing a non-existent key returns the default value (0 in this case)
puts my_hash["orange"] # Output: 0

#######################################################################################################

# Creating a hash with a default value block
my_hash = Hash.new { |hash, key| hash[key] = "Unknown" }

# Accessing a non-existent key sets a default value using the block
puts my_hash["country"] # Output: "Unknown"
puts my_hash["city"]    # Output: "Unknown"

##############################################################################
# Creating a hash with a default value as an empty array
my_hash = Hash.new { |hash, key| hash[key] = [] }

# Adding values to arrays associated with keys
my_hash["fruits"] << "apple"
my_hash["fruits"] << "banana"

my_hash["colors"] << "red"
my_hash["colors"] << "blue"

puts my_hash["fruits"].inspect # Output: ["apple", "banana"]
puts my_hash["colors"].inspect # Output: ["red", "blue"]

#Example 4: Default Value as a Counter
my_hash= Hash.new(0)

colors=[ "red", "green", "blue", "orange"]

colors.each{|color| my_hash[color]+=1}

puts my_hash.inspect


#accessing the values 
shoes = {
  "summer" => "sandals",
  "winter" => "boots"
}

puts shoes["summer"]

#accessing keys that doesnt exists
puts shoes["hiking"].inspect

# Sometimes, this behavior can be problematic for you if silently returning a nil value could potentially wreak havoc in your program. Luckily, hashes have a fetch method that will raise an error when you try to access a key that is not in your hash.

puts shoes.fetch("hiking")   #=> KeyError: key not found: "hiking"


# Alternatively, this method can return a default value instead of raising an error if the given key is not found.

puts shoes.fetch("hiking", "hiking boots") #=> "hiking boots"


# Adding and changing data
# You can add a key-value pair to a hash by calling the key and setting the value, just like you would with any other variable.

puts shoes["fall"] = "sneakers"

puts shoes     #=> {"summer"=>"sandals", "winter"=>"boots", "fall"=>"sneakers"}
# You can also use this approach to change the value of an existing key.

puts shoes["summer"] = "flip-flops"
puts shoes     #=> {"summer"=>"flip-flops", "winter"=>"boots", "fall"=>"sn


#removing data
shoes.delete("summer")
p shoes.inspect


#getting keys and values as separate arrays
p shoes.keys
p shoes.values

#merging two hashess 
hash1 = { "a" => 100, "b" => 200 }
hash2 = { "b" => 254, "c" => 300 }
merged_hash=hash1.merge(hash2)
p merged_hash

#symbols as hash keys
# 'Rocket' syntax
american_cars = {
  :chevrolet => "Corvette",
  :ford => "Mustang",
  :dodge => "Ram"
}
# 'Symbols' syntax
japanese_cars = {
  honda: "Accord",
  toyota: "Corolla",
  nissan: "Altima"
}

# unfortunately only works for symbols, though, so don’t try { 9: "value" } or you’ll get a syntax error.
# '''When you use the cleaner ‘symbols’ syntax to create a hash, you’ll still need to use the
#  standard symbol syntax when you’re trying to access a value.
#   In other words, regardless of which of the above two syntax options you use 
# when creating a hash, they both create symbol keys that are accessed the same way.'''

p american_cars[:ford]    #=> "Mustang"
p japanese_cars[:honda]   #=> "Accord"