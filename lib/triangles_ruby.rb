class Triangle
  def initialize(side1,side2,side3)
    @side1 = side1
    @side2= side2
    @side3 = side3
  end

  def side1
    @side1
  end

  def side2
    @side2
  end

  def side3
    @side3
  end

  def type_of_triangle
    if side1+side2 < side3
      triangle_type = "invalid"
      puts "This isn't a triangle, silly!"
    elsif side1 == side2 && side1 == side3 && side1 == side2
      triangle_type = "equilateral"
      puts "Triangle is equilateral"
    elsif side1 == side2 || side2 == side3 || side3 == side1
      triangle_type = "isosceles"
      puts "Triangles is isosceles"
    else
      triangle_type = "scalene"
      puts "Triangle is scalene"
    end
    triangle_type
  end
end
