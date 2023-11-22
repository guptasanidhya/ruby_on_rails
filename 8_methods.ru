name="anything".reverse
puts name

def my_name
    "sanidhya Gupta"
end

puts my_name

# def greet(name)
# puts "Hello, "+ name+"!"
# end

# puts greet("sanidhya")

def greet(name="stranger")
 puts "Hello, "+ name+"!"  
end

print greet
puts greet("sanidhya")

################################################
#using explicit return for input errors
def odd_even(number)
    unless number.is_a?(Numeric)
        return "A number is not enterned"
    end
    
    if number %2==0
        "that is an even number"
    else 
        "that is an odd number"
    end 
end 

puts odd_even(17)
puts odd_even("sanidhya")
######################################################
#chaining methods
phrase=["to", "from", "or", "and", "not"]

puts phrase.reverse.join(" ").capitalize
 
#predicate methods

puts 5.even?
puts 5.odd?
puts 12.between?(10,15)

#bang_methods
# ! bang sign
name1= "GuPta".downcase!
puts name1



def triple_add(a, b, c)
   print "#{a.to_s + b.to_s + c.to_s}!"
 end
 
 triple_add(1,2,"three") 
