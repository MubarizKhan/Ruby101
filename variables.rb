'''
Variables are the memory locations, which hold any data to be used by any program.
There are five types of variables supported by Ruby.

-----------------------------------------------------------
Ruby Global Variables

Global variables begin with $.
Uninitialized global variables have the value nil and produce warnings with the -w option.
Assignment to global variables alters the global status.
It is not recommended to use global variables. They make programs cryptic.
Here is an example showing the usage of global variable

'''

$global_variable = 10

class Class1
  def print_global
    puts "Global variable in class1 is #$global_variable"
  end
end

class AlterGlobal
  def alter_global
    $global_variable += $global_variable
    puts "Value of global variable after altering in class 2 #$global_variable"
  end
end



Class1obj = Class1.new
puts "Value of global variable before altering:"
Class1obj.print_global

AlterGlobalObj = AlterGlobal.new
AlterGlobalObj.alter_global

# Class1obj = Class1.new
Class1obj.print_global

puts "-----------------------------------------------------------------------"
'''
Ruby Instance Variables

Instance variables begin with @. Uninitialized instance variables have the value nil and
produce warnings with the -w option.
Here is an example showing the usage of Instance Variables.

Ruby Class Variables

Class variables begin with @@ and must be initialized before they can be used in method definitions.
Referencing an uninitialized class variable produces an error.
Class variables are shared among descendants of the class or
module in which the class variables are defined.
Overriding class variables produce warnings with the -w option


'''

class Customer

  @@countCustomers = 0

  def initialize(id,name,addr)
    @cust_id = id
    @name = name
    @addr = addr

    @@countCustomers += 1
    puts "count of customers is #@@countCustomers"
  end

  def display_details()
    puts "customer id is #@cust_id"
    puts "customer name is #@name"
    puts "Customer lives at #@addr"

  end
end

customerObj = Customer.new(112, "MAK", "DNT")
customerObj.display_details

c2 = Customer.new(113, "SH7", "NFL")
c2.display_details


puts "---------------------------------------------"

'''
Ruby Local Variables

Local variables begin with a lowercase letter or _.
The scope of a local variable ranges from class, module, def, or do to the corresponding end or from a
blocks opening brace to its close brace {}.
When an uninitialized local variable is referenced,
it is interpreted as a call to a method that has no arguments.
Assignment to uninitialized local variables also serves as variable declaration.
The variables start to exist until the end of the current scope is reached.
The lifetime of local variables is determined when Ruby parses the program.
In the above example, local variables are id, name and addr.
'''


'''
Ruby Constants

Constants begin with an uppercase letter.
Constants defined within a class or module can be accessed from within that class or module,
and those defined outside a class or module can be accessed globally.

Constants may not be defined within methods. Referencing an uninitialized constant produces an error.
Making an assignment to a constant that is already initialized produces a warning.

'''

class Example
  VAR1 = 100
  VAR2 = 200
  def show
     puts "Value of first Constant is #{VAR1}"
     puts "Value of second Constant is #{VAR2}"
  end
end

# Create Objects
object = Example.new()
object.show
puts "------------------------------------------------------"

"""Ruby Pseudo-Variables

They are special variables that have the appearance of local variables but behave like constants.
You cannot assign any value to these variables.

    self − The receiver object of the current method.

    true − Value representing true.

    false − Value representing false.

    nil − Value representing undefined.

    __FILE__ − The name of the current source file.

    __LINE__ − The current line number in the source file."""


"""
    Ruby Arrays
    Literals of Ruby Array are created by placing a
    comma-separated series of object references between the square brackets. A trailing comma is ignored.
"""

array = ['1', 1, 2, 'hi', 'random', 'string']

array.each do |i|
  puts i
end

puts '----------------------------------------------------------------------'

"""
                                Ruby Hashes
A literal Ruby Hash is created by placing a list of key/value pairs between braces,
with either a comma or the sequence => between the key and the value. A trailing comma is ignored.
"""

var1 = colors = {"red" => "laal", "blue" => "neela", "green" => "hara"}

var1.each do |key,value|
  puts key + "==" + value
end

puts '-----------------------------------------------------------------------------------'

"""
                                            Ruby Ranges

A Range represents an interval which is a set of values with a start and an end.
Ranges may be constructed using the s..e and s...e literals, or with Range.new.
Ranges constructed using .. run from the start to the end inclusively.
Those created using ... exclude the end value. When used as an iterator, ranges return each value in the sequence.
A range (1..5) means it includes 1, 2, 3, 4, 5 values and a range (1...5) means it includes 1, 2, 3, 4 values.

"""

(1..10).each do |i|
  puts i
end





