"""
Ruby arrays are ordered, integer-indexed collections of any object.
Each element in an array is associated with and referred to by an index.

Array indexing starts at 0, as in C or Java. A negative index is assumed relative to the end of the array --- that is,
an index of -1 indicates the last element of the array, -2 is the next to last element in the array,
and so on.

Ruby arrays can hold objects such as String, Integer, Fixnum, Hash, Symbol, even other Array objects.
Ruby arrays are not as rigid as arrays in other languages. Ruby arrays grow automatically while adding elements to them.

"""

arr1 = Array.new
arr2 = Array.new(20)
puts arr2.length,arr2.size


puts "-------------------------------------"

arr3 = Array.new(6,"test")
puts "#{arr3}"

arr4 = Array.new(10){ |e| e = e * 2 }
puts "#{arr4}"

puts "--------------------------------------"

arr5 = Array.[](1,2,3,4,5,6,7)
puts "#{arr5}"

puts "--------------------------------------"

arr6 = ["hi", "hello", 1 ,2 ,5, [23,44,55], "klk"]
puts "#{arr6}"

puts "------------------------------------"

digits = Array(0..9)
nums = digits.at(6)
puts "#{digits}, #{nums}"

puts "#{self}"


