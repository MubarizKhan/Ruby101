"""
Unique Random password generator, with gradually adding options of different
kinds(include alphabets / numeric / special-characters / length, etc as desired by the user).

The length of each input should be 7+
User Inputs: alphabets = 10, numbers = 10, symbols = 10

Step 1:
Generate random password including small case, upper case alphabets + numbers + symbols
Step 2:
Store generated password in a CSV file.
Step 3:
Generate a unique random password and check whether the newly generated password is already added in the CSV or not.

-> Generation of password
-> Check if generated password exists in csv file, if not: place in CSV/
"""




# https://www.rubyguides.com/2018/10/parse-csv-ruby/


require 'csv'




class RPG
  Specialchars = ['!',"@","#","$","%","^","&", "*", "(", ")", "-", "_", "+", ";", ":", "/", "|", "=", "<", ">", "~"]

  CapAlphabets = ['A', 'B', 'C', 'D', 'E','F', 'G', 'H', 'I', 'J', 'L', 'M', 'N',
                'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z']

  SmallAlphabets =   ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j','k','l', 'm', 'n','o', 'p', 'q', 'r',
                       's', 't', 'u', 'v', 'w', 'x' , 'y','z' ]

  Digits = ['1','2','3','4', '5', '6', '7', '8', '9', '1']

  Password_data = [Specialchars, CapAlphabets, SmallAlphabets, Digits]
  # Passwords = []

  def instantiate
    @filename = self.create_csv
    puts "#{@filename}, RPG instantiated; a file with this name has been created "

  end

  #
  # while alphaCounter, DigitCounter & specialcharcounter < 7'
  # while alphaCounter and DigitCounter and specialcharcounter < 7
  #

  def generatePW
    pw = ''
    alphaCounter = 1
    digitCounter= 1
    specialcharcounter = 1

    while alphaCounter and digitCounter and specialcharcounter < 7

      a = Password_data.sample

      if a == Password_data[0]
        puts "a is the zeroth array"
        specialcharcounter += 1
        pw = pw.concat(a.sample)
      end

      if a == Password_data[1]
          # puts "a is the FIRST array"
          alphaCounter += 1
          pw = pw.concat(a.sample)
      end

      if a == Password_data[2]
            # puts "a is the second array"
            alphaCounter += 1
            pw = pw.concat(a.sample)
      end

      if a == Password_data[3]
        # puts "a is the FIRST array"
        digitCounter += 1
        pw = pw.concat(a.sample)
      end
      puts "#{alphaCounter}, #{specialcharcounter}, #{digitCounter}, #{pw}"
    end
    pw
  end

  def create_csv(filename="dummy.csv")
    pw = [generatePW]
    # Passwords.push(pw)
    CSV.open(filename, "w") do |csv|
      csv << pw
    end
    filename
  end

  def gen_table
    table = CSV.parse(File.read("dummy.csv"))
    table
  end

  def appendToCsv(list)
    CSV.open("dummy.csv", "ab") do |csv|
      csv <<  list
      # puts "#{csv}"
    end
    table = CSV.parse(File.read("dummy.csv"))
    puts "#{table}"
    table
  end


  def generation(filename="dummy.csv")
    # table = gen_table
    ctr = 0
    for i in 0..100
      pw = [generatePW]
      table = gen_table

      # puts "#{table.is_a?(Array)}, datatype"
      #To check whether any pw is being repeated or not.
      # if i % 2 == 0
      #   pw = ["hi"]
      #   puts "#{pw}, #{i}, this is ----------------------"
      # end
      if table.include?(pw)
        puts "this pw is present alreadu, TRUEEEE"
        next
      end

      appendToCsv(pw)
    end


  end






end
# puts "-------------------------------------------------Main-----------------------------------------"

rpg = RPG.new

rpg.instantiate

rpg.generation



# puts "#{rpg.checking_existence("hi")}"
# rpg.gen_table

l = ["---L---"]
puts "#{rpg.appendToCsv(l).is_a?(Array)}, YYYY}" ##is an array
rpg.gen_table


# rpg.create_csv("dummy.csv")
# puts "#{rpg.@password_data}"

