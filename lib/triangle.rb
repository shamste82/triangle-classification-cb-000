class Triangle

  attr_accessor :sideA, :sideB, :sideC

  def initialize(sideA, sideB, sideC)
    @sideA = sideA
    @sideB = sideB
    @sideC = sideC
  end

  def kind
    if @sideA == 0 and @sideB == 0 and @sideC == 0
      raise TriangleError
    elsif @sideA < 0 or @sideB < 0 or @sideC < 0
      raise TriangleError
    elsif @sideA + @sideB <= @sideC or @sideA + @sideC <= @sideB or @sideB + @sideC <= @sideA
      raise TriangleError
    elsif self.sideA == self.sideB and self.sideB == self.sideC
      :equilateral
    elsif self.sideA == self.sideB or self.sideA == self.sideC or self.sideB == self.sideC
      :isosceles
    else
      :scalene
    end
  end

end


class TriangleError < StandardError
  def triangle_no_size
    "The triangles sides must be greater than 0"
  end

end
