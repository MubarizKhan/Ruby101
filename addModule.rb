module Addition
  A = 10
  B = 10
  def Addition.sum(x,y)
    puts x + y
  end

  def Addition.ret_a(x)
    puts x
  end
end


module Trig
  PI = 3.141592654
  def Trig.sin(x)
  # ..
    puts x
  end
  def Trig.cos(x)
  # ..
    puts x
  end
end

# y = Trig.sin(Trig::PI/4)
# puts "This is y #{y}"

# val = Addition.ret_a(Addition::A)
# puts "This is val #{val}"
