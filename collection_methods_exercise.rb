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
  puts "=" * 50
  puts "MENU"
  puts "(1) ADD HOME"
  puts "(2) LIST ALL HOMES"
  puts "(3) LIST ALL HOMES SORTED"
  puts "(4) LIST ALL HOMES IN A CITY"
  puts "(5) SHOW AVERAGE PRICE"
  puts "(6) FIND HOME BY PRICE"
end

menu
