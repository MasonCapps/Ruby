#JavaScript Symbol Syntax
item1 = { name: "water", color: "clear", price: 2 }
item2 = { name: "candle", color: "blue", price: 10 }
item3 = { name: "carpet", color: "brown", price: 20 }

#Ruby Symbol Syntax
item1 = { :name => "water", :color => "clear", :price => 2 }
item2 = { :name => "candle", :color => "blue", :price => 10 }
item3 = { :name => "carpet", :color => "brown", :price => 20 }

# puts "#{item1[:name]} is the color #{item1[:color]} and costs #{item1[:price]} dollars."
# puts "#{item2[:name]} is the color #{item2[:color]} and costs #{item2[:price]} dollars."
# puts "#{item3[:name]} is the color #{item3[:color]} and costs #{item3[:price]} dollars."

#Hash As A Class
class Item
  attr_reader :name, :color, :price
  attr_writer :price

  def initialize(name, color, price)
    @name = name
    @color = color
    @price = price
  end

  # def name
  #   @name
  # end

  # def color
  #   @color
  # end

  # def price
  #   @price
  # end

  # def price=(price_change)
  #   @price = price_change
  # end

  def information
    puts "#{@name} is the color #{@color} and costs #{@price} dollars."
  end
end

item = Item.new("Water", "clear", 2)
item.information
item.price = 5
item.information
