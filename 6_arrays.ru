#Arrays are commonly created with an array literal
num_array=[1,2,3,4,5]
str_array=["this","is","a","small","array"]
puts str_array[0]            #=> "This"
puts str_array[1]            #=> "is"
puts str_array[4]            #=> "array"
puts str_array[-1]           #=> "array"
puts str_array[-2]           #=> "

puts str_array.first
puts str_array.last
puts str_array.first(2)
puts str_array.last(2)

#use shovel or push to add and pop to remove
num_array.push(1,10)
popped_value=num_array.pop
puts popped_value
num_array<<15
print num_array
#An array can also be created by calling the Array.new method. When you call this method, you can also include up to 2 optional arguments (initial size and default value):
arr1=Array.new
arr2=Array.new(3)
arr3=Array.new(3,7)
arr4=Array.new(3,true)
print arr2

num_array.unshift(20);puts;

print num_array;puts;

num_array.shift
print num_array;puts;

#concatenate
a = [1, 2, 3]
b = [3, 4, 5]

a + b         #=> [1, 2, 3, 3, 4, 5]
a.concat(b)   #=> [1, 2, 3, 3, 4, 5]

puts ([1,1,1,2,2,3,4]-[1,4]).inspect

#multidimensional array
multi=Array.new(3) {Array.new(3)}
puts multi.inspect;
multi[0][1]=1;
puts multi.inspect

string_array= %w[f g i]
print(string_array)

#converting string to char array
print "sanidhya".chars
puts "sanidhya".chars.inspect #gives you commas and squares




#to access a array elements

num=[10,20,30,40,50,60,70,80]
puts num[1..3].inspect
puts num[1...2].inspect
puts num[1,3].inspect

puts num.at(0)


array1 = ['a', 'b', 'c', 'd', 'e', 'f']
# puts array1.fetch(100) #=> IndexError: index 100 outside of array bounds: -6...6
puts array1.fetch(100, "oops") #=> "oops"


#methods
puts [].empty?               #=> true
puts [[]].empty?             #=> false
puts [1, 2].empty?           #=> false

puts [1, 2, 3].length        #=> 3

puts [1, 2, 3].reverse.inspect       #=> [3, 2, 1]

puts [1, 2, 3].include?(3)   #=> true
puts [1, 2, 3].include?("3") #=> false

puts [1, 2, 3].join          #=> "123"
puts [1, 2, 3].join("-")     #=> "1-2-3"

num.insert(3, 'orange', 'pear', 'grapefruit')
#=> [0, 1, 2, "orange", "pear", "grapefruit", "apple", 3, 4, 5, 6]
puts num.inspect

# A useful method if you need to remove nil values from an array is compact:

array2 = ['foo', 0, nil, 'bar', 7, 'baz', nil]
puts array2.compact.inspect  #=> ['foo', 0, 'bar', 7, 'baz']

##############################################################################################################
#iteration
for i in 0...num.length do
    puts  num[i]
end

##if you want to apply something on eah element you can use each
array3=[1,2,3,4,5]
array3.each{|a| print a-=10, " "}
puts


#reversed array with commas

words= %w[first second third fourth fifth sixth]
words_reverse= words.reverse
print words_reverse
###############reversing and creating a single string part1
string_reverse=""
for i in 0..words.length-1
    string_reverse = string_reverse+words_reverse[i]
end
print string_reverse
puts


words= %w[first second third fourth fifth sixth]
str=""
###############reversing and creating a single string part2
words.reverse_each{|word| str+= "#{word}"}
p str
#################################################

# The map method can be used to create a new array based on the original array, but with the values modified by the supplied block:
array4=[1,2,3,4,5]
array5=array4.map{|a| 2*a}
p array5;

array6=array4.map!{|a| 2*a}#The map! method (with a bang, !) modifies the original array
p array6;
print "this is array4 #{array4}"
puts


# Non-destructive Selection
array7=[1,2,3,4,5,6]
p array7.select{|a| a>3}
p array7.reject{|a| a<3}
p array7.drop_while {|a| a < 4}

# Destructive Selection
#select! and reject! are the corresponding destructive methods to select and reject

# Similar to select vs. reject, delete_if and keep_if have the exact opposite result when supplied with the same block:
