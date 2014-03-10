require "./lib/triangles_ruby"

@triangle_list = []

def main_menu
  puts "Press 'a' to check your triangle"
  puts "Press 'x' to exit"
  main_choice = gets.chomp
  if main_choice == 'a'
    add_triangle
  else
    puts "TRIANGLE, TRIANGLE, TRIANGLE!"
  end
end

def add_triangle
  puts "Enter triangle sides"
  puts "\n"
  puts "Side 1: \n"
  side1 = gets.chomp.to_i
  puts "Side 2: \n"
  side2 = gets.chomp.to_i
  puts "Side 3: \n"
  side3 = gets.chomp.to_i
  @triangle_list << Triangle.new(side1,side2,side3)
  puts "\n"
  puts "All triangles: "
  number = 1
  @triangle_list.each do |triangle|
    puts "Triangle " + number.to_s + " Side A: " + triangle.side1.to_s + " Side B: " + triangle.side2.to_s + " Side C: " + triangle.side3.to_s
    puts "Type: " + triangle.type_of_triangle.to_s
    puts "\n\n"
    number += 1
  end
  puts "\n"
  main_menu
end

main_menu
