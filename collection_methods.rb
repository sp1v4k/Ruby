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

#collection index
#each
#homes.each do |hm|
#  puts "#{hm.name} in #{hm.city}\n Price: #{hm.price} a night"
#end
#
#
#names = []
#
##new array creation from Object array elements
#homes.each { |hm| names << hm.name  }
#puts names
#
##map method
##it is normal to do it with map method
#cities = []
#cities = homes.map { |hm| hm.city }
#puts cities
#
##each_with_index: same as each but the block recieves a second parameter, the index
#
#homes.each_with_index do |hm, index|
#  puts "#{hm.name} is home number: #{index + 1}"
#end
#
##select collector method: filter the object array and creates a new one. Do not touch original. Discard all different to the item passed.
#
#san_juan_homes = []
#san_juan_homes = homes.select do |hm|
#  #keeps hm if city is San Juan
#  hm.city == "San Juan"
#end
#
#san_juan_homes.each do |hm|
#  puts "#{hm.name} in #{hm.city}\n Price: #{hm.price} a night"
#end
#
#high_capacity_homes = []
#high_capacity_homes = homes.select do |hm|
#  hm.capacity >= 4
#end
#
#
#high_capacity_homes.each do |hm|
#  puts "#{hm.name} in #{hm.city}\n Price: #{hm.price} a night"
#end
##find collector method: finds one item and return that item. ONLY DE FIRST ONE!
#
#home_41_dollars = homes.find do |hm|
#  hm.price == 41
#end
#
#puts home_41_dollars.name

#sorted_homes = []
#
#sorted_homes = homes.sort do |home1, home2|
#  home1.price <=> home2.price
#end
#
#sorted_homes.each do |hm|
#  puts "#{hm.name} in #{hm.city}\n Price: #{hm.price} a night"
#end

#reduce method: takes an array and return a single value
#now with out reduce

total_capacity = 0.0

homes.each do |hm|
  total_capacity = total_capacity + hm.capacity
end

puts total_capacity / homes.length

total_capacity = homes.reduce(0.0) do |sum, hm|
  sum + hm.capacity
end

puts total_capacity / homes.length 
