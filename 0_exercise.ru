#https://launchschool.com/books/ruby/read/intro_exercises

#ex1
"""
arr1=[1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
arr1.each do |item|
  print item
end
"""
#ex 2
"""arr1=[1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
arr1.each { |a| puts a if a>5  } 

arr1.each do |number|
    if number>5
        puts number
    end
end
"""
# ex3
arr1=[1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

# arr2=arr1.select{|number| number%2==0}
# p arr2.inspect

"""arr2=arr1.select do |number|
number%2==0
end
p arr2.inspect
"""

#ex4
arr1.push(11)
arr1.unshift(0)
# p arr1.inspect
    
#ex5
arr1.delete(11)
arr1.push(3)
# p arr1.inspect

##ex6
arr1.uniq!
# p arr1.inspect


##ex8

my_hash1={
    "sanidhya"=>"boy",
    "an array"=>[1,2,3,4,5],
    "power"=>97,
    "any empty hash within a hash"=>{}
}
# 
# p my_hash1

myhash2={
    "a boy":"Sandy",
    "a power":97,
    "array":[1,2,3,4,5],
    "any empty hash within a hash": {}
}
# p myhash2

#ex9
h = {a:1, b:2, c:3, d:4}
# p h[:b]

h[:e]=5
# p h

"""h.each do |key, value|
    if h[key] <2.5
        h.delete(key)
    end
end
p h
"""

"""h.delete_if{|k,v| v<2.5}
p h

"""

#ex 10
# hash values as arrays
hash = {names: ['bob', 'joe', 'susan']}

# array of hashes
arr = [{name: 'bob'}, {name: 'joe'}, {name: 'susan'}]

##ex11
contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}

# Expected output:
#  {
#    "Joe Smith"=>{:email=>"joe@email.com", :address=>"123 Main st.", :phone=>"555-123-4567"},
#    "Sally Johnson"=>{:email=>"sally@email.com", :address=>"404 Not Found Dr.",  :phone=>"123-234-3454"}
#  }

contacts["Joe Smith"][:email]=contact_data[0][0]
contacts["Joe Smith"][:address]=contact_data[0][1]
contacts["Joe Smith"][:number]=contact_data[0][0]
contacts["Sally Johnson"][:email]=contact_data[1][0]
contacts["Sally Johnson"][:address]=contact_data[1][1]
contacts["Sally Johnson"][:number]=contact_data[1][2]


##12
# p contacts
# puts contacts["Joe Smith"][:email]
# puts contacts["Sally Johnson"][:number]

# ##13
# arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']
# arr.delete_if {|word| word.start_with?("s")}
# puts arr

# # ex 14

# a = ['white snow', 'winter wonderland', 'melting ice',
#      'slippery sidewalk', 'salted roads', 'white trees']

# new_arr=a.map {|word| word.split(" ")}
# print new_arr.flatten


##ex 16

#for single user
contact_data = ["joe@email.com", "123 Main st.", "555-123-4567"]
contacts = {"Joe Smith" => {}}
fields=[:email, :address, :phone]


fields.each do |field|
    contacts["Joe Smith"][field]=contact_data.shift
end

# print contacts


#for multiple users my ans

contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]
contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}
fields=[:email, :address, :phone]
#flattening the array because each hash unit has 3 values 
"""contact_data.flatten!
# print contact_data

#creating list for customers
list=contacts.keys
count=list.length
"""
#now all arrays are linear so putting it  1 by 1 the data 2 times the loop will fire or fields and updates the data 
"""count.times do |i|
    fields.each do |field|
        contacts[list[i]][field]=contact_data.shift
    end
end
"""
# print contacts


#ans from the website for single 

"""contacts.each do |name, hash|
    fields.each do |field|
      hash[field] = contact_data.shift
    end
  end

print contacts
"""
#ans from the website for multiple
contacts.each_with_index do |(name,hash),idx|
    fields.each do |field|
        hash[field]=contact_data[idx].shift
        end
    end

print contacts