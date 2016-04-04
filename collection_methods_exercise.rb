require "pry"

#def Directory
#  def initialize(homes)
#    @homes = homes
#  end
#
#  def add_home
#  end
#end

class Home
    attr_reader :name, :city, :capacity, :price

    def initialize(name, city, capacity, price)
      @name = name
      @city = city
      @capacity = capacity
      @price = price
    end
end

def menu
  system("clear")
  puts "=" * 50
  puts "                  My HackBnB MENU"
  puts "=" * 50
  puts " " * 50
  puts "(1) ADD HOME"
  puts "(2) LIST ALL HOMES"
  puts "(3) LIST ALL HOMES SORTED"
  puts "(4) LIST ALL HOMES IN A CITY"
  puts "(5) SHOW AVERAGE PRICE"
  puts "(6) FIND HOME BY PRICE"
end

key = nil
homes = []
name = nil
city = nil
capacity = 0
price = 0

menu
$option = gets.chomp

case $option
when "1"
  puts "Name? "
  name = gets.chomp
  system("clear")
  menu
  puts "City? "
  city = gets.chomp
  system("clear")
  menu
  puts "Capacity? "
  capacity = gets.chomp
  system("clear")
  menu
  puts "Price? "
  price = gets.chomp
  system("clear")
  menu
  homes.push(Home.new(name, city, capacity, price))
when "2"
  homes.each do |hm|
    puts "#{hm.name} #{hm.city} #{hm.capacity} #{hm.price}"
  end
when "3"
  puts "Option 3"
when "4"
  puts "Option 4"
when "5"
  puts "Option 5"
when "6"
  puts "Option 6"
else
  puts "Wrong selection! Press any key to continue."
  key = gets.chomp
end
