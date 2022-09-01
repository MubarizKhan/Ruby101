puts"#{self}" #if you don't specify who you are, it'll always return main

"""Talking to objects

One object interacts with another by using what are called methods. More specifically,
one object calls or invokes the methods of another object.

In the example below, we call the method even? on the object that is the number 2 by placing a period (.)
after the object,
then adding in the name of the method we want to invoke. """

puts 2.even?

"""
Invoking a method on an object inevitably generates a response.
This response is always another object.
Calling the method next on the object 1 has it give us the next consecutive value, 2.

One may also chain method invocations by simply adding more periods and method names sequentially -
 each method in the chain is called on the result of the previous method.
 Go on and try it by invoking next twice on 1 to get 3.
"""

1.next.next

"""
Ruby objects are happy to tell you what methods they provide. You simply call the methods method on them.

"""

1.methods

"""
Invoking methods with arguments

When talking to an object via its methods, it is possible to give it additional information
 so it can give you an appropriate response.

This additional information is called the /arguments to a method./
 The name /argument/ makes sense if you stop to think about the fact that methods are the
  paths of communication between objects.

Here's an example of an argument to the method index, which finds the position of the argument in the array:

"""

['rock','paper','scissors'].index('paper')

"""
Try using a method that takes two arguments -
use the between? method to determine if the number 2 lies between the numbers 1 and 3.
"""

2.between?(1,3)




