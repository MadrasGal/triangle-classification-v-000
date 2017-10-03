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
    elsif(@lengthA == @lengthB && @lengthB ==@lengthC && lengthA > 0)
      return :equilateral
    elsif (@lengthA == @lengthB || @lengthA == @lengthC || @lengthB == @lengthC)
      return :isosceles
    elsif (@lengthA != @lengthB && @lengthB!=@lengthC)
      return :scalene
    end
  end

  end
end
