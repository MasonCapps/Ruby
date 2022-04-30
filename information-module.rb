module Informable
  def information
    puts "#{@name} is the color #{@color}, costs #{@price} dollars, and it is #{@stock} that it is in stock."
  end
end

module Available
  def stock=(status)
    @stock = status
  end
end
