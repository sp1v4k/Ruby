class Home
  attr_reader :name, :city, :capacity, :price

  def initialize(name, city, capacity, price)
    @name = name
    @city = city
    @capacity = capacity
    @price = price
  end

end

homes =[
  Home.new("Nizar's place", "San Juan", 2, 43),
  Home.new("Fernando's place", "Seville", 5, 47),
  Home.new("Josh's place", "Pittsburgh", 3, 41),
  Home.new("Gonzalo's place", "Málaga", 2, 45),
  Home.new("Ariel's place", "San Juan", 4, 49),
]

homes.each do |hm|
  puts "#{hm.name} in #{hm.city}\n Price: #{hm.price} a night"
end

#another cool way to block: homes.each { |hm| puts hm.name  }
