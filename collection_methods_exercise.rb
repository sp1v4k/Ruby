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
    puts "(7) EXIT"
end

key = nil
homes = []
name = nil
city = nil
capacity = 0
price = 0
option = "0"

until option == "7" do
    menu
    option = gets.chomp
    case option
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
            puts "Name: #{hm.name.capitalize} City: #{hm.city.capitalize} Capacity: #{hm.capacity} Price: #{hm.price}€"
        end
        puts "Press any key to Menu"
        key = gets
    when "3"
        sorted_homes = []
        puts "Sort by price (p) or by capacity (c)? "
        sort_option = gets.chomp
        p = false
        c = false
        until p == true || c == true
            if sort_option == "p"
                p = true
                sorted_homes = homes.sort do |hm, hm1|
                    hm.price <=> hm1.price
                end
                sorted_homes.each {|hm| puts "Name: #{hm.name.capitalize} City: #{hm.city.capitalize} Capacity: #{hm.capacity} Price: #{hm.price}€"}
            elsif sort_option == "c"
                c = true
                sorted_homes = homes.sort do |hm, hm1|
                    hm.capacity <=> hm1.capacity
                end
                sorted_homes.each {|hm| puts "Name: #{hm.name.capitalize} City: #{hm.city.capitalize} Capacity: #{hm.capacity} Price: #{hm.price}€"}
            else
                puts "Wrong option!"
            end
        end
        puts "Press any key to Menu"
        key = gets
    when "4" #filter by city
        puts "Enter city: "
        city_tmp = gets.chomp.downcase
        city_homes = []
        city_homes = homes.select do |hm|
            hm.city == city_tmp
        end
        city_homes.each do |hm|
            puts "Name: #{name.capitalize} City: #{city.capitalize} Capacity: #{capacity} Price: #{price}€"
        end
        puts "Press any key to Menu"
        key = gets
    when "5" #calculates average home price
        sum_price = 0.0
        avg_price = 0.0
        sum_price = homes.reduce(0.0) do |sum, hm|
            sum + hm.price
        end
        avg_price = sum_price / homes.length
        puts "All homes average price: #{avg_price}€\n"
        puts "Press any key to Menu"
        key = gets
    when "6" #finds a home with the specified price
        home_price = 0
        price_homes = []
        puts "Enter desired price: "
        home_price = gets.to_i
        price_homes = homes.find do |hm|
            hm.price == home_price
        end
        price_homes.each do |hm|
            puts "Name: #{name.capitalize} City: #{city.capitalize} Capacity: #{capacity} Price: #{price}€"
        end
        puts "Press any key to Menu"
        key = gets
    when "7"
        system("clear")
        puts "Thanks using HackBnB"
    else
        puts "Wrong selection! Press any key to continue."
    end
end
