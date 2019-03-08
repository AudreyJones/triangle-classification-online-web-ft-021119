require 'pry'
# The sum of the lengths of any two sides of a triangle always exceeds the length
# of the third side. This is a principle known as the _triangle inequality_.
class Triangle
  attr_accessor :first, :second, :third, :inequality
  def initialize(first, second, third)
    @first = first
    @second = second
    @third = third
    @inequality = [(first + second > third), (first + third > second), (second + third > first)]
  end

# Can we create a separate method testing for validity and then implement that in #kind ?
  def valid?

    if @inequality == false
      begin                                                     #raise the custom error
        raise TriangleError
      rescue TriangleError => error
        puts error.message
      end
    else
      "We have a valid triangle!"
    end
  end

  def kind
    if valid?
    else #test for types of triangles!
      if (first == second) && (first == third)
        return :equilateral
      elsif (first == second) || (second == third) || (first == third)
        return :isosceles
      elsif (first != second) || (second != third) || (first != third)
        return :scalene
      else
        begin                                                     #raise the custom error
          raise TriangleError
        rescue TriangleError => error
          puts error.message
        end
      end
    end
  end

  class TriangleError < StandardError
    def message
      "Your triangle is invalid"
    end
  end

end
