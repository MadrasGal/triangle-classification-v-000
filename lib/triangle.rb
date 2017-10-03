class Triangle
  # write code here
  attr_accessor :lengthA, :lengthB, :lengthC
  def initialize(lengthA, lengthB, lengthC)
    @lengthA = lengthA
    @lengthB = lengthB
    @lengthC = lengthC
  end
  def kind
    if (@lengthA <= 0 || @lengthB <= 0 || @lengthC <= 0 || (@lengthA + @lengthB) <= @lengthC || (@lengthB + @lengthC) <= @lengthA || (@lengthA + @lengthC) <= @lengthB )
      # begin
      raise TriangleError
      # rescue TriangleError
          # puts error.message
      # end
    elsif(@sideA == @sideB && @sideB ==@sideC && sideA > 0)
      return :equilateral
    elsif (@sideA == @sideB || @sideA == @sideC || @sideB == @sideC)
      return :isosceles
    elsif (@sideA != @sideB && @sideB!=@sideC)
      return :scalene
    end
  end

  end
end
