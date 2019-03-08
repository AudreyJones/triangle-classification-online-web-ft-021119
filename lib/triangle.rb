require 'pry'
# The sum of the lengths of any two sides of a triangle always exceeds the length
# of the third side. This is a principle known as the _triangle inequality_.
class Triangle
  attr_accessor :first, :second, :third
  def initialize(first, second, third)
    @first = first
    @second = second
    @third = third
  end

  def kind
    if #the triangle is invalid
      #raise the custom error
      begin
        raise TriangleError
      rescue TriangleError => error
        puts error.message
      end
    else #test for types of triangles!
      if first = second = third
        return :equilateral
      elsif (first == second) || (second == third)
    # elsif
    #   return :isosceles
    # elsif
    #   return :scalene
      end
    end
  end

  class TriangleError < StandardError
    def message
      "Your triangle is invalid"
    end
  end

end
