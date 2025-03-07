class Triangle
  # write code here
  attr_accessor :sides
  
  @sides = []

  def initialize(side1, side2, side3)
    @sides = [side1, side2, side3]
    @sides.sort!
  end

  def kind
    if @sides.any? { |sides| sides <= 0} || ((@sides[0] + @sides[1] <= @sides[2]))
    raise TriangleError
    elsif @sides.uniq.length == 1
      :equilateral
    elsif @sides.uniq.length == 2
      :isosceles
    else
      :scalene
    end
    
  end
  class TriangleError < StandardError
  end

end
