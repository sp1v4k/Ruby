class Car

  def initialize(sound = "broom")
    @sound = sound
    @cities = []
  end

  def sound
    puts @sound
  end

  def visit(city)
    # add a given city to Array of cities
    #@cities << city
    File.open("cities_db.txt", "a") do |file|
      file << city + "\n"
    end
  end

  def cities
    # returns Array of cities
    #@cities.inspect
    File.open("cities_db.txt", "r").each_line do |line|
      puts line
    end
  end
end

# this is a subclass of Car
class RacingCar < Car
  def initialize(sound = "BROOM")
    super
    @sound = "BROOOM"
  end
end

car = Car.new
car2 = RacingCar.new
car.visit("Barcelona")
car.visit("Madrid")
car2.visit("Barcelona")
car2.visit("Madrid")
#puts car.cities
car2.sound
