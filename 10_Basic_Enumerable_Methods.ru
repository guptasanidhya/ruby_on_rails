"""Let’s say that you wanted to make an invite list for your birthday using your friends array but that you don’t want to invite your friend Brian because he’s a bit of a nutcase at parties and always drinks way too much."""
friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']
# invited_list=[]

"""for friend in friends do
    if friend!='Brian'
    invited_list.push(friend)
    end
end
"""
# p invited_list

# invited_list=friends.select{|friend| friend!='Brian'}
# p invited_list

# invited_list=friends.reject{|friend| friend=='Brian'}
# p invited_list

# friends.each{|friend| puts "hello, "+friend}

# my_array=[1,2]
# my_array.each do |num|
#     num*=2
#     puts "the new number is #{num}."
# end

# # 
# my_hash={"one"=>1, "two"=>2}
# my_hash.each { |key,value| puts "#{key} and its #{value}"}


# fruits=fruits = ["apple", "banana", "strawberry", "pineapple"]
# fruits.each_with_index {|fruit,index| puts fruit if index.even?}


# friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']
# upcased_friends=friends.map{|friend| friend.upcase}
# p upcased_friends


# Maybe now you’re getting hungry from all this intense learning and you want to change your McDonald’s order from medium to extra large. With #map and #gsub, that’s easy peasy:

my_order = ['medium Big Mac', 'medium fries', 'medium milkshake']

new_order =my_order.map{|item| item.gsub("medium","extra large")}

# p new_order

salaries = [1200, 1500, 1100, 1800]

new_salary=salaries.map { |salary| salary - 700 }
#=> [500, 800, 400, 1100]

responses = { 'Sharon' => 'yes', 'Leo' => 'no', 'Leila' => 'no', 'Arun' => 'yes' }
allowed=responses.select { |person, response| response == 'yes'}


#The #reduce method (also called #inject) is possibly the most difficult-to-grasp enumerable for new coders. The idea is simple enough, though: it reduces an array or hash down to a single object. You should use #reduce when you want to get an output of a single value.

my_numbers=[5,6,7,8]

reduced=my_numbers.reduce{|sum,number| sum+number}
p reduced

#The first block variable in the #reduce enumerable (sum in this example) is known as the accumulator. The result of each iteration is stored in the accumulator and then passed to the next iteration. The accumulator is also the value that the #reduce method returns at the end of its work.

my_numbers = [5, 6, 7, 8]

reduced_sum=my_numbers.reduce(1000) { |sum, number| sum + number }

votes = ["Bob's Dirty Burger Shack", "St. Mark's Bistro", "Bob's Dirty Burger Shack"]


votes.reduce(Hash.new(0)) do |result, vote|
    result[vote] += 1
    p result
    end


friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']

def invited_friends(friends)
  friends.select { |friend| friend != 'Brian' }
end

print friends
#=> ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']

print invited_friends(friends)
 #=> ["Sharon", "Leo", "Leila", "Arun"]
  
  