require "./information-module.rb"

class Item
  attr_reader :name, :color, :price
  attr_writer :price
  include Informable

  def initialize(variables)
    @name = variables[:name]
    @color = variables[:color]
    @price = variables[:price]
  end
end
