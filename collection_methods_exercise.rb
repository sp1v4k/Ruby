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
    name = gets.chomp.downcase
    system("clear")
    menu
    puts "City? "
    city = gets.chomp.downcase
    system("clear")
    menu
    puts "Capacity? "
    capacity = gets.to_i
    system("clear")
    menu
    puts "Price? "
    price = gets.to_i
    system("clear")
    menu
    homes.push(Home.new(name, city, capacity, price))
when "2"
    system("clear")
    homes.each do |hm|
        puts "#{hm.name} #{hm.city} #{hm.capacity} #{hm.price}"
    end
when "3"
    puts "Option 3"
when "4"
    puts "Enter city: "
    city_tmp = gets.chomp.downcase
    city_homes = []
    city_homes = homes.select do |hm|
        hm.city == city_tmp
    end
    city_homes.each do |hm|
        puts "       HOME                CITY             Capacity      PRICE"
        puts "#{name.capitalize}   #{city.capitalize}   #{capacity}   #{price}"
    end
when "5"
    puts "Option 5"
when "6"
    puts "Option 6"
else
    puts "Wrong selection! Press any key to continue."
    key = gets.chomp
end
