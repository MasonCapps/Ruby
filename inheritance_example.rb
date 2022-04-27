class Transportation
  def initialize(variables)
    @speed = variables[:speed]
    @direction = variables[:direction]
  end

  def brake
    @speed = 0
    puts "Your speed is now #{@speed}"
  end

  def accelerate
    @speed += 10
    puts "Your speed is now #{@speed}"
  end

  def turn(new_direction)
    @direction = new_direction
  end
end

class Car < Transportation
  def initialize(variables)
    super(variables)
    @fuel = variables[:fuel]
    @make = variables[:make]
    @model = variables[:model]
  end

  def honk_horn
    puts "Beeeeeeep!"
  end
end

class Bike < Transportation
  def initialize(variables)
    super(variables)
    @type = variables[:type]
    @weight = variables[:weight]
  end

  def ring_bell
    puts "Ring ring!"
  end
end

car = Car.new({ speed: 50, direction: "north", fuel: "full", make: "Nissan", model: "Altima" })
bike = Bike.new({ speed: 10, direction: "south", type: "mountain", weight: "30 pounds" })
p car
p bike
