array.index(value)
  #returns what place in the index that value is in the array (0, 1, 2)

array(value_x - value_y).abs
  #returns absolute value of the equation


## just like class "Car"
class Person
## all the below are attributes of "Car" or "Person"

  attr_accessor :name, :age, :gender, :eye_color

  #called with Person.new
  def initialize(name, age)
    @name = name
    @age = age
  end

  #setter
  def set_name(name)   # or def set_name=(name)
    @name = name
  end

  #getter
  def name
    @name
  end

  def speak(words)
    puts words
  end
end

person_1 = Person.new
person_2 = Person.new
person_1.set_name("Rober Paulson")
puts "His name is #{person_1.name}"

person_2.set_name("Tyler Durden")
puts person_2.name

########
#This is roughly the same as below. Shortcut to below. Don't use below.
class Pet
  attr_accessor :name, :age
end

#Same as above
class Pet
  def name=(name)
    @name = name
  end
  def name
    @name
  end
end

##########

class Car
  attr_accessor :color, :year, :make, :model
  def initialize(color, year, make, model)
    @color = color
    @year = year
    @make = make
    @model = model
  end

  def honk
    puts "honk"
  end

end

car_1 = Car.new("red", 2004, "Kia", "Soul")
car_2 = Car.new("blue", 2010, "Ford", "F150")

car_2.honk

clss String
  def mess_up
    self.reverse.downcase
  end
end

"Foo bar".mess_up




