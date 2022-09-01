# https://www.tutorialspoint.com/ruby/ruby_blocks.htm

"""
You have seen how Ruby defines methods where you can put number of statements and then you call that method.
Similarly, Ruby has a concept of Block.
    A block consists of chunks of code.
    You assign a name to a block.
    The code in the block is always enclosed within braces ({}).
    A block is always invoked from a function with the same name as that of the block.
    This means that if you have a block with the name test,
    then you use the function test to invoke this block.
    You invoke a block by using the yield statement."""

""" THE YIELD STATEMENT """

def test
  puts "this is the function default code executing"
  yield
  puts " we are back to the function default code being executed"
  yield
end

test {puts "hi hello how are you?"}

puts('-------------------------')


def test2
  yield 5
  puts "you are in the test method"
  yield 100
end

test2 {|i| puts "you are in the block #{i}"}

# test2

puts('-------------------------')

"""
 But if the last argument of a method is preceded by &,
 then you can pass a block to this method and this block will be assigned to the last parameter.
 In case both * and & are present in the argument list, & should come later.

"""
def test(&block)
  block.call
end
test { puts "Hello World!"}


