# require 'pry-byebug'


# def yell_greeting(string)
#   name = string

#   binding.pry

#   name = name.upcase
#   greeting = "WASSAP, #{name}!"
#   puts greeting
# end

# yell_greeting("bob")


def yell_greeting(string)
  name = string

  name = name.upcase
  greeting = "WASSAP, #{name}!"
  puts greeting
end

yell_greeting("bob")
