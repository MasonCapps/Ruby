require "./information-module.rb"

class Item
  attr_reader :name, :color, :price, :stock
  attr_writer :price
  include Informable
  include Available

  def initialize(variables)
    @name = variables[:name]
    @color = variables[:color]
    @price = variables[:price]
    @stock = variables[:stock]
  end
end
