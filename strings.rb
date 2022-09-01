"""
A String object in Ruby holds and manipulates an arbitrary sequence of one or more bytes,
typically representing characters that represent human language.

The simplest string literals are enclosed in single quotes (the apostrophe character).
 The text within the quote marks is the value of the string −


The backslash also works to escape another backslash,
so that the second backslash is not itself interpreted as an escape character.
Following are the string-related features of Ruby."""


puts 'This is a simple Ruby string literal'

# If you need to place an apostrophe within a single-quoted string literal,
# precede it with a backslash, so that the Ruby interpreter does not think that it terminates the string −
puts 'Won\'t you read O\'Reilly\'s book?'

"""
Expression Substitution
Expression substitution is a means of embedding the value of any Ruby expression into a string using
# { and } −
"""
x, y, z = 12, 36, 72
puts "The value of x is #{ x }."
puts "The sum of x and y is #{ x + y }."
puts "The average was #{ (x + y + z)/3 }"

"""
General Delimited Strings

With general delimited strings, you can create strings inside a pair of matching though arbitrary delimiter characters
, e.g., !, (, {, <, etc., preceded by a percent character (%). Q, q, and x have special meanings.
   General delimited strings can be """

puts %{Ruby is fun.}
puts "is equivalent to"
puts "Ruby is fun."
puts "--------------------------"

puts %Q{ Ruby is fun. }
puts"is equivalent to"
puts" Ruby is fun. "
puts "--------------------------"
puts %q[Ruby is fun.]
"is equivalent to a single-quoted string"
puts "--------------------------"
puts %x!ls!
puts "is equivalent to back tick command output `ls`"

puts "-------------------------------------------------------------------------"

"""

String Built-in Methods

We need to have an instance of String object to call a String method. Following is the way to create an instance of String object −

new [String.new(str = "")]

This will return a new string object containing a copy of str.
Now, using str object, we can all use any available instance methods. For example −

"""

myStr = String.new(str="THIS IS A STRING")
puts myStr.downcase
puts myStr.upcase
