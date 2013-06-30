# def add(a, b)
#   return a + b
# end

# def subtract(a, b)
#   return a - b
# end

# def multiply(a, b)
#   return a * b
# end

# def divide(a, b)
#   return a / b
# end

# def prompt_numbers
#   puts "Give me the first number"
#   a = gets.chomp.to_f.downcase
#   puts "give me the second number"
#   b = gets.chomp.to_f.downcase
#   return a, b
# end

# def prompt_function
#   puts "Add, subtract, multiply, divide?"
#   return gets.chomp
# end

# def prompt
#   function = prompt_function
#   a, b = prompt_numbers
#   return a, b, function
# end

# a, b, math_function = promptd

# puts case math_function
# when "add"
#   return add(a, b)
# when "subtract"
#   return subtract(a, b)
# when "multiply"
#   return multiply(a, b)
# when "divide"
#   return divide(a, b)
# end


#######

city_populations = {:sf=>100000, :nyc=>9000000, :boston=>600000, :berlin=>3500000, :wilm=>70000, :dc=>600000}

def annotate_population(city_symbol, city_population_hash)
  population_value = city_population_hash[city_symbol]
  return "#{city_symbol} (Population #{population_value})"
  #return city_symbol.to_s + " (Population " + population_value.to_s + ")"
end

puts annotate_population(:sf, city_populations)


#####

arr.reject! {|num| num.even?}

arr.flatten

arr.flatten

birtdates.uniq
   #which values are unique

cards.shuffle
  #shuffles values

lottery_numbers.sample
  #pulls out one sample

lottery_numbers.samle(2)
  #pulls out two samples

chapter_titles.index("Title")
  #returns what number title is in the array (0, 1, 2...)

10.times do |x|
  puts x
end
#counts 0 to 9


students.sample do |x|
  sample(sample(x))




