class Transportation
  def initialize
    @speed = 0
    @direction = "north"
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
    super()
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
    super()
    @type = variables[:type]
    @weight = variables[:weight]
  end

  def ring_bell
    puts "Ring ring!"
  end
end

car = Car.new({ fuel: "full", make: "Nissan", model: "Altima" })
bike = Bike.new({ type: "mountain", weight: "30 pounds" })
p car
p bike

puts "this is a test"
