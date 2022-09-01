"""
https://www.tutorialspoint.com/ruby/ruby_modules.htm

Modules are a way of grouping together methods, classes, and constants.
Modules give you two major benefits.

    Modules provide a namespace and prevent name clashes.
    Modules implement the mixin facility.

Modules define a namespace, a sandbox in which your methods and
constants can play without having to worry about being stepped on by other methods and constants.

Syntax

module Identifier
   statement1
   statement2
   ...........
end

Module constants are named just like class constants, with an initial uppercase letter.
The method definitions look similar, too: Module methods are defined just like class methods.
As with class methods, you call a module method by preceding its name with the modules
 name and a period, and you reference a constant using the module name and two colons

 Modules define a namespace,
 a sandbox in which your methods and constants can play without having to worry
 about being stepped on by other methods and constants.
 """

 $LOAD_PATH << '.' #This is telling ruby to look into that file we're looking for is in this directory.

 require 'addModule.rb'
 require 'weekModule'

 val = Addition.sum(Addition::A,Addition::B)
 puts "This is the val from module page#{val}"


 """

      Ruby include Statement

You can embed a module in a class. To embed a module in a class, you use the include statement in the class −
      Syntax
      include modulename
      If a module is defined in a separate file, then it is required to include that file using require statement before embedding module in a class.

"""

class Decade
  include Week
  def firstDayofWeek
    puts Week::FIRST_DAY
  end

  def weeksInDecade
    weeksInYear = Week::weeksInYear
    puts "These are the number of weeks in a decade#{weeksInYear * 10}"
  end

  def MIDecade
    monthsInDecade = Week::weeksInMonth * 10
    puts "These are the number of months in a decade#{monthsInDecade}"
  end
end

  d1 = Decade.new
  puts Week::FIRST_DAY
  Week.weeksInMonth
  Week.weeksInYear
  d1.MIDecade
  d1.weeksInDecade

