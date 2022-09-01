'''
https://www.tutorialspoint.com/ruby/ruby_operators.htm
Ruby Parallel Assignment

Ruby also supports the parallel assignment of variables.
This enables multiple variables to be initialized with a single line of Ruby code. For example

'''
a,b,c = 12,20,30

puts a,b,c

puts '-------------------------------------------------------'

'''
      BITWISE OPERATORS
'''

a = 00111100
b = 00001101

print a,b, 'this is a,b'
print a&b, 'this is a&b'
puts a|b
puts a^b
puts ~a

puts '-----------------------------------------------'

'''
Ruby defined? Operators

defined? is a special operator that takes the form of a method call to determine whether or not
the passed expression is defined. It returns a description string of the expression,
 or nil if the expression isnt defined.

There are various usage of defined? Operator'''

# VVariable = 10
var1,VVar,$var3 = 10, 100,1000
hash1 = {"var1" => var1, "VVar" => VVar, "$var3" => $var3}

hash1.each do |key,value|
  if defined? key
    puts value, 'exists'
  end
end








