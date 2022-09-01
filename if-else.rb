

x = 2
i = 0
if i < x
  i += 1
  puts i, 'this is the value of i'
end
if x > 1
  puts x, 'x is greater than 1'
end

""" RUBY UNLESS MODIFIER
      Executes code if conditional is false. """

puts '-----------------------------------------------'

$var =  1
print "1 -- Value is set\n" if $var
print "2 -- Value is set\n" unless $var

$var = false
print "3 -- Value is set\n" unless $var

puts '-----------------------------------------------'


"""
                            Ruby case Statement

Compares the expression specified by case and that specified by when using the === operator
and executes the code of the when clause that matches.
The expression specified by the when clause is evaluated as the left operand.
If no when clauses match, case executes the code of the else clause.
A when statement's expression is separated from code by the reserved word then, a newline, or a semicolon.

"""

# ##############################################################################################
##############################################################################################
##############################################################################################



def age_enhancer
  case $age
  when 0 .. 2
    puts "baby"
  when 3 .. 6
    $age += 21    #Even if you do this, it doesn't matter, as just like if/else, only one condition will be executed.
    puts $age
    puts "little child"

  when 7 .. 12
    puts "child"
  when 13 .. 18
    puts "youth"
  else
    puts "adult"
    puts "this is a joke"
  end
end

(1..3).each do |i|
  $age = 5 if i==1

  age_enhancer
end
