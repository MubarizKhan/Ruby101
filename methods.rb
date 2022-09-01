""" https://www.tutorialspoint.com/ruby/ruby_methods.htm#


Ruby methods are very similar to functions in any other programming language.
Ruby methods are used to bundle one or more repeatable statements into a single unit.
Method names should begin with a lowercase letter.
If you begin a method name with an uppercase letter,
Ruby might think that it is a constant and hence can parse the call incorrectly.
Methods should be defined before calling them, otherwise Ruby will raise an exception for undefined method invoking."""

def add(a,b)
  puts "first numeric is #{a}"
  puts "second numeric is #{a}"
  return a + b
end



var = add((add 7,4),(add 7,4))
puts var

puts "------------------------"

def test(*sample)

  for i in 0..sample.length
    puts "params are #{i}"
  end
end

var1 = test 1,2,3,4,5,6,7,8,9,10

puts "------------------------"

'''
Class Methods

When a method is defined outside of the class definition, the method is marked as private by default.
On the other hand, the methods defined in the class definition are marked as public by default.
The default visibility and the private mark of the methods can be changed by public or private of the Module.

Whenever you want to access a method of a class, you first need to instantiate the class.
Then, using the object, you can access any member of the class.

Ruby gives you a way to access a method without instantiating a class.
Let us see how a class method is declared and accessed −

class Accounts
   def reading_charge
   end
   def Accounts.return_date
   end
end

See how the method return_date is declared.
It is declared with the class name followed by a period, which is followed by the name of the method.
You can access this class method directly as follows −

Accounts.return_date

'''
