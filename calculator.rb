puts "What calculation would you like to perform? " +
"Your options are: " +
"add, subtract, multiply, divide, " +
"area of a square, area of a circle, area of a triangle, area of a cube."

calculation = gets.chomp.downcase

def gets_two_values
  puts "Enter first value"
  first = gets.chomp.to_f
  puts "Enter second value"
  second = gets.chomp.to_f
  return first, second
end

def add(x, y)
  return x + y
end

def subtract(x, y)
  return x - y
end

def multiply(x, y)
  return x * y
end

def divide(x, y)
  return x / y
end

def area_square(x)
  return x ** 2
end

def area_pi(x)
  return (x ** 2) * PI
end

def area_triangle(x, y)
  return (0.5 * x * y)
end

def area_cube(x, y, z)
  return (x * y * z)
end

case calculation

  when "add"
    number_1, number_2 = gets_two_values
    puts
    puts "#{number_1} plus #{number_2} equals:"
    puts add(number_1, number_2)
  when "subtract"
    number_1, number_2 = gets_two_values
    puts
    puts "#{number_1} minus #{number_2} equals:"
    puts subtract(number_1, number_2)
  when "multiply"
    number_1, number_2 = gets_two_values
    puts
    puts "#{number_1} times #{number_2} equals:"
    puts multiply(number_1, number_2)
  when "divide"
    number_1, number_2 = gets_two_values
    puts
    puts "#{number_1} divided by #{number_2} equals:"
    puts divide(number_1, number_2)
  when "area of a square"
    puts "Enter the length of a side"
    number_1 = gets.chomp.to_i
    puts
    puts "The area of a square equals side squared."
    puts "So, #{number_1} times #{number_1} equals:"
    puts area_square(number_1)
  when "area of a circle"
    puts "Enter the radius"
    number_1 = gets.chomp.to_i
    PI = 3.14
    puts
    puts "The area of a circle equals pie times radius squared."
    puts "So, PI times #{number_1} squared equals:"
    puts area_pi(number_1)
  when "area of a triangle"
    puts "Enter the base"
    base = gets.chomp.to_i
    puts "Enter the height"
    height = gets.chomp.to_i
    puts
    puts "The area of a triangle equals one half base times height."
    puts "So, 0.5 times #{base} times #{height} equals:"
    puts area_triangle(base, height)
  when "area of a cube"
    puts "enter length"
    length = gets.chomp.to_i
    puts "enter width"
    width = gets.chomp.to_i
    puts "enter height"
    height = gets.chomp.to_i
    puts
    puts "Area of a cube equals length times width times height"
    puts "So, #{length} times #{width} times #{height} equals:"
    puts area_cube(length, width, height)
  else
    puts "please enter an operation on the list"
  end


