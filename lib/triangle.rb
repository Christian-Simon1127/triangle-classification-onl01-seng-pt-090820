class Triangle
  # write code here
  attr_accessor :length1, :length2, :length3
  
  def initialize(length1, length2, length3)
    @length1 = length1
    @length2 = length2
    @length3 = length3
  end
  
  def kind 
    if @length1 + @length2 < @length3 || @length1 > @length2 + @length3 || @lenght1 + @length3 < @length2 || @length1 == 0 || @length2 == 0 || @length3 == 0
      begin 
        raise TriangleError
      rescue error => TriangleError 
        error.message
      end 
    else 
      if @length1 == @length2 && @length2 == @length3
        :equilateral
      elsif @length1 == @length2 || @length2 == @length3 || @length1 == @length3
        :isosceles
      else 
        :scalene
      end
    end
  end
  
  class TriangleError < StandardError
    def message 
      "haha this works I guess"
    end
  end
  
end
