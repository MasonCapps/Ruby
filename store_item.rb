require_relative("./food-class.rb")
require "./item-class.rb"

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

food = Food.new({ name: "water", color: "clear", price: 2, shelf_life: "Forever", stock: true })
item = Item.new({ name: "water", color: "clear", price: 2, stock: true })

food.information
item.information
item.stock = false
item.information

puts "test"

# items = []
# items << item
# p item

# print "[C]reate [R]ead [U]pdate [D]elete [Q]uit: "
# initial_input = gets.chomp.to_s

# if initial_input == "c"
#   print "Name: "
#   input_name = gets.chomp
#   print "Color: "
#   input_color = gets.chomp
#   print "Price: "
#   input_price = gets.chomp.to_i
# elsif initial_input == "r"
#   print "Item ID: "
#   input_item_id = gets.chomp.to_i
#   if input_item_id < items.length
#     p items[input_item_id]
#   else
#     p "This item does not exist."
#   end
# elsif initial_input == "u"
#   print "Item ID: "
#   input_item_id = gets.chomp.to_i
#   print "The active stock status for this item is items[input_item_id].stock"
# elsif initial_input == "d"
# elsif initial_input == "q"
# end
