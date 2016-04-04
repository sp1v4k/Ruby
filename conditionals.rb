
age = 29
name = "Toni"
names = ["Andreas", "Marc", "Toni"]
puts "-" * 50
puts "#{29} is my age, and #{name} is, of course, is my name "
if age < 18
  puts "Too young you baby!!!"
elsif age == 29
  puts "You have the right age!"
else
  puts "Too old big boy!"
end

#Let's put it in just one line

puts "You are legally allowed to drink" if age > 21

#not recommended to use unless when there are too many statments
puts "You are really old" unless age < 45
puts "You are teacher" if name == "Andreas"
puts "You are NOT the teacher" unless name == "Andreas"
puts "You are NOT the teacher" unless not name == "Andreas"

puts "You are student" if name == ("Marc" || "Toni")
#another way to do it
puts "You are student" if name == "Marc" || name = "Toni"

puts "-" * 50

names.each_with_index do |name, index|
#for i in (1..names.length)
    print name
    puts index
#  puts names[name]
end

for name in names
  puts name
end
