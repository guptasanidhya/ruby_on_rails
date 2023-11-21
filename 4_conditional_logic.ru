room_tidy=true
if room_tidy==true
    puts "i cannot play this game"
end

if 1<2
    puts "hot diggity, 1 is less than 2"
end

puts "hii i am better than you" if 1<2


attack_by_land=false
if attack_by_land == true
    puts "release the goat"
  else
    puts "release the shark"
  end



attack_by_sea=1
if attack_by_land == true
    puts "release the goat"
elsif attack_by_sea == true
    puts "release the shark"
else
    puts "release Kevin the octopus" 
end

puts 1==true #false
puts 1==false #false

#eql? checks both the value type and the actual value it holds.

5.eql?(5.0) #=> false; although they are the same value, one is an integer and the other is a float
5.eql?(5)   #=> true

#equal? checks whether both values are the exact same object in memory. This can be slightly confusing because of the way computers store some values for efficiency. Two variables pointing to the same number will usually return true.

a = 5
b = 5
a.equal?(b) #=> true
# This expression is true because of the way computers store integers in memory.
#  Although two different variables are holding the number 5, they point to the same object in memory. However, consider the next code example:

a = "hello"
b = "hello"
a.equal?(b) #=> false
# This happens because computers can’t store strings in the same efficient way
#  they store numbers. Although the values of the variables are the same, the computer has created two separate string objects in memory.

a = "hello"
b = "hello"
c = "HELLO"
#compares values 
puts a.eql?(b)  # true
puts a.eql?(c)  # false (case-sensitive comparison)
# In the example, eql? returns true when comparing a and b because their values are the same. However, it returns false when comparing a and c due to case sensitivity.

x = "hello"
y = "hello"
z = x

puts x.equal?(y)  # false (different objects)
puts x.equal?(z)  # true (same object)
# In this example, equal? returns false when comparing x and y because they are different objects. It returns true when comparing x and z because they refer to the same object.


#spaceship operator
"""<=> (spaceship operator) returns the following:

-1 if the value on the left is less than the value on the right;
0 if the value on the left is equal to the value on the right; and
1 if the value on the left is greater than the value on the right."""
puts 5 <=> 10    #=> -1
puts 10 <=> 10   #=> 0
puts 10 <=> 5    #=> 1

if 1 < 2 && 5 < 6
    puts "Party at Kevin's!"
end
  
  # This can also be written as
if 1 < 2 and 5 < 6
puts "Party at Kevin's!"
end

puts  !false     #=> true

puts !(10 < 5)  #=> true


#case statement
grade = 'F'
did_i_pass= case grade 
when 'A' then puts "hell yeah!"
when 'B' then puts "its ok"
else puts "'you shall not pass!'-gandalf" 
end


grade="G"
did_i_pass= case grade
when 'A'
    puts "best"
    future_account_balance=5000000
when 'G'
    puts "hide somewhere"
    can_i_retire_soon = false

else 
    puts "unknown grade"
end


#unless
age = 19
unless age < 18
  puts "Get a job."
end

age = 19
puts "Welcome to a life of debt." unless age < 18

unless age < 18
  puts "Down with that sort of thing."
else
  puts "Careful now!"
end


#ternary operator
age=19
response = age<18?"your still have life ahead of you":"you are all grown up"
puts response

puts ("woah") || true