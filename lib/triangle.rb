require 'pry'
class Triangle
  # write code here
  attr_accessor :side1, :side2, :side3, :sizes

  def initialize(side1, side2, side3)
    @side1= side1
    @side2= side2
    @side3= side3
    @sizes= [@side1, @side2, @side3]
  end

  def kind
    sortSizes = @sizes.sort
    if @sizes.include?(0) || @sizes.min < 0 || sortSizes[0]+sortSizes[1] <= sortSizes[2]
      raise TriangleError
    elsif @sizes.uniq.size == 1
      :equilateral
    elsif @sizes.uniq.size == 2
      :isosceles
    elsif @sizes.uniq.size == 3
      :scalene
    end
    #@sizes
  end

  class TriangleError < StandardError
    "The sides of your triangle are invalid"
  end
end
#binding.pry
