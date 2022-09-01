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


  """
  Mixins in Ruby
  Before going through this section, we assume you have the knowledge of Object Oriented Concepts.
  When a class can inherit features from more than one parent class, the class is supposed to show multiple inheritance.
  Ruby does not support multiple inheritance directly but Ruby Modules have another wonderful use. At a stroke, they pretty much eliminate the need for multiple inheritance, providing a facility called a mixin.
  Mixins give you a wonderfully controlled way of adding functionality to classes. However, their true power comes out when the code in the mixin starts to interact with code in the class that uses it.
  Let us examine the following sample code to gain an understand of mixin −

  module A
     def a1
     end
     def a2
     end
  end
  module B
     def b1
     end
     def b2
     end
  end

  class Sample
  include A
  include B
     def s1
     end
  end

  samp = Sample.new
  samp.a1
  samp.a2
  samp.b1
  samp.b2
  samp.s1

  Module A consists of the methods a1 and a2. Module B consists of the methods b1 and b2.
  The class Sample includes both modules A and B. The class Sample can access all four methods,
  namely, a1, a2, b1, and b2. Therefore, you can see that the class Sample inherits from both the modules.
  Thus, you can say the class Sample shows multiple inheritance or a mixin.
"""
