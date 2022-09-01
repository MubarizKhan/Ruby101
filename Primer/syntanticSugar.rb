"""
Ruby makes an exception in its syntactic rules for
commonly used operators so you dont have to use periods to invoke them on objects.
"""

words = ["foo", "bar", "baz"]
words[1]

words = ["foo", "bar", "baz"]
words.[](1)

"""Search in a String

Another common scenario is checking if a String contains any given character, word or sub-string. """

"[Luke:] I can’t believe it. [Yoda:] That is why you fail.".include? "Yoda"



# Now check if the string below starts with 'Ruby'.
"Ruby is a beautiful language".start_with?"Ruby"

"""
Are you getting the hang of the Ruby API? The previous three methods all ended with a '?'.
It is conventional in Ruby to have '?' at the end of the method if that method returns only
 boolean values.
Though it is not mandated by the syntax, this practice is highly recommended as it
increases the readability of code. """

"I am a Rubyist".index("R")

puts 'i am in lowercase'.upcase #=> 'I AM IN LOWERCASE'

'This is Mixed CASE'.downcase

'Fear is the path to the dark side'.split(' ')

# Let's try a more widely used alias. You can use '<<' just like '+', but in this case the String object
# 'Monk' will be appended to the object represented by 'Ruby' itself. In the first case of using '+',
#   the original string is not modified, as a third string 'RubyMonk' is created.
#   This can make a huge difference in your memory utilization, if you are doing really large scale string manipulations.
# Change the code above to use '<<' and see all the tests passing again.

"ruby"<<"l"

"I should look into your problem when I get time".sub('I','We')


"""
The method above only replaced the first occurrence of the term we were looking for.
In order to replace all occurrences we can use a method called gsub which has a global scope

"""
"I should look into your problem when I get time".gsub('I','We')


"""
If you haven't come across the term Regular Expression before, now is the time for introductions.
Regular Expressions or RegExs are a concise and flexible means for matching particular characters,
words, or patterns of characters. In Ruby you specify a RegEx by putting it between a
pair of forward slashes (/).
Now let's look at an example that replaces all the vowels with the number 1:

"""

'RubyMonk'.gsub(/[aeiou]/,'1')

'RubyMonk Is Pretty Brilliant'.gsub(/[RMIPB]/,'0')

"""
Find a substring using RegEx

We covered the art of finding the position of a substring in a previous lesson,
but how do we handle those cases where we don't know exactly what we are looking for?
That's where Regular Expressions come in handy. The String#match method converts a pattern to a Regexp
(if it isn‘t already one), and then invokes its match method on the target String object.
Here is how you find the characters from a String which are next to a whitespace:
"""

'RubyMonk Is Pretty Brilliant'.match(/ ./, 9)



