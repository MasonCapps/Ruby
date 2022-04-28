require "./item-class.rb"
require "./information-module.rb"

class Food < Item
  include Informable

  def initialize(variables)
    super
    @shelf_life = variables[:shelf_life]
  end

  def shelf_life
    @shelf_life = shelf_life
  end
end
