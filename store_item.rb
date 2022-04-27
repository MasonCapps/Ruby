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
    super
    @shelf_life = variables[:shelf_life]
  end

  def shelf_life
    @shelf_life = shelf_life
  end
end

food = Food.new({ name: "water", color: "clear", price: 2, shelf_life: "Forever" })

item = Item.new({ name: "water", color: "clear", price: 2 })
items = []
items << item
p item

print "[C]reate [R]ead [U]pdate [D]elete [Q]uit: "
initial_input = gets.chomp.to_s

if initial_input == "c"
  puts "First name: "
  input_first_name = gets.chomp
  puts "Last name: "
  input_last_name = gets.chomp
  puts "Salary: "
  input_salary = gets.chomp.to_i
  p input_first_name
  p input_last_name
  p input_salary
elsif initial_input == "r"
  print "Item ID: "
  input_id = gets.chomp.to_i
  p items[input_id]
elsif initial_input == "u"
elsif initial_input == "d"
elsif initial_input == "q"
end
