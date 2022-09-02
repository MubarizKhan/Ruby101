require 'csv'

# CSV.parse("1, chocolate\n2,bacon\n3,apple")

cats = [
  [:blue],# 1],
  [:white], #2],
  [:black_and_white]#, 3]
]

# cats.map { |c| c.join(",") }.join("\n")



# table = CSV.parse(File.read("cats.csv"), headers: true)


'''
    This block of code is creating csv file,

    creating a random string {needs to be modified in order to be fit for requirements}

    checking existence in table, if it does exist, will simply go to the next iteration and wont
    be included in the csv, if its unique it will be written in the csv.
'''

"writing a csv from scratch"

CSV.open("cats.csv", "w") do |csv|
  csv << cats #[:white, 2]
end

puts '------------------------------------------------'
table = CSV.parse(File.read("myfile.csv"), headers: true)

list = []
for i in (0..10)
  # list = []
  string_length = 8
  v = rand(36**string_length).to_s(36)
  list.push(v)
  puts v

  if v in table
    next
  end
  # csv << v+
end

#Appending data to csv
list.push("hiiiiiiiiiiiiiii")
require 'csv'
CSV.open("myfile.csv", "ab") do |csv|
  csv <<  list
  # csv << "hi"
  # csv << ["another", "row"]
  # ...
end

table = CSV.parse(File.read("myfile.csv"), headers: true)

puts "#{table}, this is the table"

# if "hi" in table
#   puts "hi in table"
# end
# # /l
# CSV.open("cats.csv", "w") do |csv|
#   csv << cats #[:white, 2]
# end
