'''Here Document in Ruby

"Here Document" refers to build strings from multiple lines.
 Following a << you can specify a string or an identifier to terminate the string literal,
 and all lines following the current line up to the terminator are the value of the string.

If the terminator is quoted, the type of quotes determines the type of the line-oriented string literal.
Notice there must be no space between << and the terminator.'''

print <<EOF
   This is the first way of creating
   here document ie. multiple line string.
EOF

print <<CCV
  This is a test

CCV

print <<WTH
  I dont know what this is used for?

WTH

# puts CCV + EOF;
# print <<"EOF";
