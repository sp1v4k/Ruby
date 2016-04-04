require "pry"

def Directory
  def initialize(homes)
    @homes = homes
  end

  def add_home

  end

end

def Home
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

def get_home_data
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
end


menu
homes = []
option = gets.chomp
if option == 1
  get_home_data
  homes << Home.new(name, city, capacity, price)
end
