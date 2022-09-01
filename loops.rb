'''
Ruby while Statement
Syntax

while conditional [do]
   code
end

Executes code while conditional is true.
A while loops conditional is separated from code by the reserved word do,
a newline, backslash \, or a semicolon ;.

'''

$i = 0
num = 10
while $i < num do
  $i += 1
  puts $i
end

puts '-------------------------'

$i = 0
num = 5
begin
  puts("i = #$i")
  $i += 1
end while $i < num

puts '----------------------'

"""
Ruby until Statement

until conditional [do]
   code
end

Executes code while conditional is false. An until statement's conditional
 is separated from code by the reserved word do, a newline, or a semicolon. """

$i = 0
$num = 5

until $i > $num do
  $i += 1
  puts("this is the value of i inside the loop #$i")
end

puts '-----------------------------------'

$i = 0
$num = 5

begin
  $i += 1
  puts("This is the value of i-j #$i")
end until $i > $num

puts('----------------------------------------------')


'''

        Ruby for Statement
        Syntax

        for variable [, variable ...] in expression [do]
          code
        end

        Executes code once for each element in expression

'''

for iterant in 0..5
  puts "value of iterant is  #{iterant}"
end

puts "---------------------------------------------------"

"""
        Ruby break Statement
        Syntax

        break
Terminates the most internal loop.
Terminates a method with an associated block if called within the block (with the method returning nil).

"""
for i in 0..5
  if i > 2
    puts "tis time to break the loop"
    break
  end
  # else
    puts "value of i is #{i}"
  # end
end

puts "----------------------------------------------"

"""         Ruby next Statement
                  Syntax
                  next

Jumps to the next iteration of the most internal loop.
Terminates execution of a block if called within a block (with yield or call returning nil)."""

for i in 0..5
  if i < 2
    next
  end
  if i > 4
    puts "i is greater than 4 and the value is #{i}"
  end
end

puts "------------------------------"

"""
Ruby redo Statement
      Syntax

      redo

Restarts this iteration of the most internal loop, without checking loop condition.
Restarts yield or call if called within a block.

"""

for i in 0..5
  if i < 2
    i += 1
    redo
  end
  puts "i is less than or equal to 2 and the value is #{i}"
end

puts "---------------------------------"

"""            Ruby retry Statement
            Syntax

            retry

        If retry appears in rescue clause of begin expression,
        restart from the beginning of the begin body.

        begin
          do_something # exception raised
        rescue
          # handles error
          retry  # restart from beginning
        end

    If retry appears in the iterator, the block, or the body of the for expression,
    restarts the invocation of the iterator call. Arguments to the iterator is re-evaluated.

for i in 1..5
   retry if some_condition # restart from i == 1
end

Example"""



