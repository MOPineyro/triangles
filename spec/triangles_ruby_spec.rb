require "rspec"
require "triangles_ruby"

describe Triangle do
  it "should create a new Triangle with given l,w,h" do
    test_triangle = Triangle.new(2,2,2)
    test_triangle.should be_an_instance_of Triangle
    test_triangle.side1.should eq 2
  end
  it "should create a new Triangle with given l,w,h" do
    test_triangle = Triangle.new(2,2,2)
    test_triangle.type_of_triangle.should eq "equilateral"
  end
end
