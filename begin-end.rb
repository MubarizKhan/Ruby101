'''
        Ruby BEGIN Statement
          Syntax

          BEGIN {
            code
          }

          Declares code to be called before the program is run.

        Ruby END Statement
              Syntax

              END {
                code
              }

              Declares code to be called at the end of the program.


    Rubys BEGIN and END blocks (in uppercase) are reserved keywords in Ruby and are pretty straightforward to use.
    They enable you to specify blocks of code that you want your
    program to run at the beginning and end of its execution,
    regardless of their position in the source file.
'''

puts "this is the begin program"

BEGIN {
  puts "Begin statement is being executed"
}

END{
  puts "END Statement is being executed"
}

BEGIN {
  puts "Begin statement is being executed"
}
