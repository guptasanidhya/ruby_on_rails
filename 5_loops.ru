i =0
loop do
    puts "i is #{i}"
    i=i+1;
    break if i==10
    end

i=0
while i<10 do
    puts "is is #{i}";
    i=i+1;
end

# we can use it to ask question repeatedly
# while gets.chomp !="yes" do
#     puts "are we there yet?"
# end


i=0;
until i >10 do
    puts "i is #{i}"
    i=i+1;
end

# until gets.chomp == "yes" do
#     puts "do you like pizza?"
# end

for i in 0..5
puts i
end

for i in 0...5
    puts i
end

for i in "A".."Z"
    print i
end



#times loop
5.times do
    puts "hii I am SAndy"
end

5.times do |number|
    puts "Alternative fact number #{number}"
end

5.upto(10){
    |num| print "#{num}"}

10.downto(5){ |num| print "#{num} "}