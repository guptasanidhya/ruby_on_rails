test_scores = [
  [97, 76, 79, 93],
  [79, 84, 76, 79],
  [88, 67, 64, 76],
  [94, 55, 67, 81]
]

teacher_mailboxes = [
  ["Adams", "Baker", "Clark", "Davis"],
  ["Jones", "Lewis", "Lopez", "Moore"],
  ["Perez", "Scott", "Smith", "Young"]
]

teacher_mailboxes[0][-1]
#=> "Davis"
teacher_mailboxes[-1][0]
#=> "Perez"
teacher_mailboxes[-1][-2]
#=> "Smith"

###If you try to access an index of a nonexistent nested element, it will raise an NoMethodError, because the nil class does not have a [] method. However, just like a regular array, if you try to access a nonexistent index inside of an existing nested element, it will return nil.
# teacher_mailboxes[3][0]
#=> NoMethodError
# teacher_mailboxes[0][4]
#=> nil


#f you want a nil value returned when trying to access an index of a nonexistent nested element, you can use the #dig method. This method can also be used when accessing a nonexistent index inside of an existing nested element.

p teacher_mailboxes.dig(3, 0)
#=> nil
p teacher_mailboxes.dig(0, 4)
#=> nil


#creating a array mutable errored
#According to the documentation the second optional argument, for the default value, should only be used with an immutable (unable to be changed) object such as a number, boolean value, or symbol. Using a string, array, hash, or other mutable object may result in confusing behavior because each default value in the array will actually be a reference to the same default value. Therefore, any change to one of the elements will change all of the elements in the array.
mutable = Array.new(3,Array.new(2))
mutable[0][0]=1000
p mutable

#
immutable = Array.new(3) { Array.new(2) }
#=> [[nil, nil], [nil, nil], [nil, nil]]
immutable[0][0] = 1000
#=> 1000
p immutable
#=> [[1000, nil], [nil, nil], [nil, nil]]


#Adding and removing elements
test_scores << [100, 99, 98, 97]
#=> [[97, 76, 79, 93], [79, 84, 76, 79], [88, 67, 64, 76], [94, 55, 67, 81], [100, 99, 98, 97]]
test_scores[0].push(100)
#=> [97, 76, 79, 93, 100]
test_scores
#=> [[97, 76, 79, 93, 100], [79, 84, 76, 79], [88, 67, 64, 76], [94, 55, 67, 81], [100, 99, 98, 97]]

test_scores.pop
#=> [100, 99, 98, 97]
test_scores[0].pop
#=> 100
test_scores
#=> [[97, 76, 79, 93], [79, 84, 76, 79], [88, 67, 64, 76], [94, 55, 67, 81]]


# Iterating over a nested array
teacher_mailboxes = [
  ["Adams", "Baker", "Clark", "Davis"],
  ["Jones", "Lewis", "Lopez", "Moore"],
  ["Perez", "Scott", "Smith", "Young"]
]

# teacher_mailboxes.each_with_index do |row,row_index|
#   puts "Row:#{row_index}=#{row}"
# end

# teacher_mailboxes.each_with_index do |row,row_index|
#   row.each_with_index do |teacher,column_index|
#     puts "Row: #{row_index} Column:#{column_index} = #{teacher}"
#   end
# end



#if you want only the name of the teachers
# # teacher_mailboxes.flatten.each do |teacher|
# #   puts "#{teacher} is amazing!"
# end  

##Now let’s take a look at a more complicated example of nesting two predicate enumerables together. Using the above nested array of test scores, let’s determine if any student scored higher than 80 on everything.


test_scores = [[97, 76, 79, 93], [79, 84, 76, 79], [88, 67, 64, 76], [94, 55, 67, 81]]
"""
test_scores.any? do|scores|
 puts scores.all?{|score| score>80}
end

test_scores.all? do|scores|
  puts scores.any?{|score| score>80}
end"""

vehicles = {
  alice: {year: 2019, make: "Toyota", model: "Corolla"},
  blake: {year: 2020, make: "Volkswagen", model: "Beetle"},
  caleb: {year: 2020, make: "Honda", model: "Accord"}
}



vehicles[:alice][:year]
#=> 2019
vehicles[:blake][:make]
#=> "Volkswagen"
vehicles[:caleb][:model]
#=> "Accord"


# Similar to nested arrays, if you try to access a key in a nonexistent nested hash, it will raise an NoMethodError, therefore you may want to use the #dig method. As expected, if you try to access a nonexistent key in an existing nested hash, it will return nil.

# vehicles[:zoe][:year]
#=> NoMethodError
vehicles.dig(:zoe, :year)
#=> nil
vehicles[:alice][:color]
#=> nil
vehicles.dig(:alice, :color)
#=> nil


# Adding and removing data
# You can add more nested hashes, just like a regular hash. Let’s say Dave just bought a new vehicle and we want to add it to the list.

vehicles[:dave] = {year: 2021, make: "Ford", model: "Escape"}
#=> {:year=>2021, :make=>"Ford", :model=>"Escape"}
vehicles
#=> {:alice=>{:year=>2019, :make=>"Toyota", :model=>"Corolla"}, :blake=>{:year=>2020, :make=>"Volkswagen", :model=>"Beetle"}, :caleb=>{:year=>2020, :make=>"Honda", :model=>"Accord"}, :dave=>{:year=>2021, :make=>"Ford", :model=>"Escape"}}



# You can also add an element to one of the nested hashes. Let’s say that Dave really loves his new Escape and thinks we should keep track of the color of the vehicles. To add a new key/value pair to a nested hash, specify the key of the nested hash right before naming the new key.

vehicles[:dave][:color] = "red"
#=> "red"
vehicles
#=> {:alice=>{:year=>2019, :make=>"Toyota", :model=>"Corolla"}, :blake=>{:year=>2020, :make=>"Volkswagen", :model=>"Beetle"}, :caleb=>{:year=>2020, :make=>"Honda", :model=>"Accord"}, :dave=>{:year=>2021, :make=>"Ford", :model=>"Escape", :color=>"red"}}



# Deleting one of the nested hashes will be just like a regular hash. Let’s say Blake has decided to sell his Beetle and backpack across Europe. So, let’s delete Blake’s car.

vehicles.delete(:blake)
#=> {:year=>2020, :make=>"Volkswagen", :model=>"Beetle"}
vehicles
#=> {:alice=>{:year=>2019, :make=>"Toyota", :model=>"Corolla"}, :caleb=>{:year=>2020, :make=>"Honda", :model=>"Accord"}, :dave=>{:year=>2021, :make=>"Ford", :model=>"Escape", :color=>"red"}}



#To delete one of the key/value pairs inside of a nested hash, you first specify the key of the hash. Let’s say Dave decided that we don’t need to specify the color of his vehicle. Therefore, we specify vehicles[:dave] before we indicate the key of the nested hash to delete.

vehicles[:dave].delete(:color)
#=> "red"
vehicles
#=> {:alice=>{:year=>2019, :make=>"Toyota", :model=>"Corolla"}, :caleb


selected_data=vehicles.select{|name,data| data[:year]>=2020}
p selected_data

collected_data=vehicles.collect { |name, data| name if data[:year] >= 2020 }
p collected_data

optimized_data=vehicles.collect { |name, data| name if data[:year] >= 2020 }.compact
p optimized_data#=> [:caleb, :dave]

same_enumaerate=vehicles.filter_map { |name, data| name if data[:year] >= 2020 }