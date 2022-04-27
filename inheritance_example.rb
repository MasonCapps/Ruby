class Transportation
  def initialize(speed, direction)
    @speed = speed
    @direction = direction
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
  def honk_horn
    puts "Beeeeeeep!"
  end
end

class Bike < Transportation
  def ring_bell
    puts "Ring ring!"
  end
end

car = Car.new(50, "north")
bike = Bike.new(10, "south")
car.accelerate
bike.accelerate
car.honk_horn
bike.ring_bell
