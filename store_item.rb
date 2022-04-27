#JavaScript Symbol Syntax
item1 = { name: "water", color: "clear", price: 2 }
item2 = { name: "candle", color: "blue", price: 10 }
item3 = { name: "carpet", color: "brown", price: 20 }

#Ruby Symbol Syntax
item1 = { :name => "water", :color => "clear", :price => 2 }
item2 = { :name => "candle", :color => "blue", :price => 10 }
item3 = { :name => "carpet", :color => "brown", :price => 20 }

puts "#{item1[:name]} is the color #{item1[:color]} and costs #{item1[:price]} dollars."
puts "#{item2[:name]} is the color #{item2[:color]} and costs #{item2[:price]} dollars."
puts "#{item3[:name]} is the color #{item3[:color]} and costs #{item3[:price]} dollars."

#Hash As A Class
class Item
  attr_reader :name, :color, :price
  attr_writer :price

  def initialize(variables)
    @name = variables[:name]
    @color = variables[:color]
    @price = variables[:price]
  end

  def information
    puts "#{@name} is the color #{@color} and costs #{@price} dollars."
  end
end

class Food < Item
  def initialize(variables)
    super(variables)
    @shelf_life = variables[:shelf_life]
  end

  def shelf_life
    @shelf_life = shelf_life
  end
end

item = Item.new({ name: "water", color: "clear", price: 2 })
item.information

food = Food.new({ name: "water", color: "clear", price: 2, shelf_life: "Forever" })
p food
