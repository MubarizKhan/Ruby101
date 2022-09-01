#optional arguments
def write(file, data, mode="w")
end

# One of the downsides of required & default arguments is that they are order dependent.
# Meaning that you have to pass in the arguments in the same order

# Keyword arguments allow you to vary the order of the arguments.
def write(file:, data:, mode: "ascii")
end

# This way there is no possible confusion about which of the two numbers (10 & 20)
# correspond to the x value or the y value.

class Point
  def initialize(x: , y:)
    @x, @y = x, y
  end
end

point = Point.new(x: 10, y: 20)

#Variable Arguments

def print_all(*args)
  puts args

print_all(1,2,3,4,5,6,7)

puts "-----------------------------"

def print_all(*)
end

end

# This means that the method is accepting any arguments, but it’s not doing anything with them.
#  It’s similar to using the underscore character (_) inside a block to show which arguments you aren’t using.

class Food
  def nutrition(vitamins, minerals)
    puts vitamins
    puts minerals
  end
end

class Bacon < Food
  def nutrition(*)
    super
  end
end

bacon = Bacon.new

bacon.nutrition("B6", "Iron")

