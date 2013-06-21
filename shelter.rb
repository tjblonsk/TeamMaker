class Shelter
  attr_accessor :adoptable_animals, :client_list

  def initialize
    @adoptable_animals = {}
    @client_list = {}
  end

  def list_clients
  end

end


class Client
  attr_accessor :name, :age, :gender, :kids, :number_of_pets

  def initialize(name, age, gender, kids, number_of_pets)
    @name = name
    @age = age
    @gender = gender
    @kids = kids
    @number_of_pets = number_of_pets
  end

  def to_s
    puts "#{name} is #{age}, #{gender}, has #{kids} kids and #{number_of_pets} pets."
  end


  def give_up
  end
end

class Animal
  attr_accessor :name, :type, :breed, :age, :gender, :toys

  def initialize(name, type, breed, age, gender, toys)
    @name = name
    @type = type
    @breed = breed
    @age = age
    @gender = gender
    @toys = toys
  end

  def to_s
    puts "#{@name} is a #{@gender} #{@breed} #{@type}, age #{@age} and has a #{@toys}."
  end
end

happitails = Shelter.new

happitails.adoptable_animals[:a1] = Animal.new("Frank", "cat", "tabby", 14, "male", "doll")
happitails.adoptable_animals[:a2] = Animal.new("Fluffy", "cat", "Maine Coon", 5, "femlae", "chewtoy")
happitails.adoptable_animals[:a3] = Animal.new("Playdo", "dog", "Rotweiler", 8, "male", "bone")
happitails.adoptable_animals[:a4] = Animal.new("Barry", "horse", "Clidesdeils", 12, "male", "hay")

happitails.client_list[:c1] = Client.new("Bob", 30, "male", 2, 3)
happitails.client_list[:c2] = Client.new("Sarah", 35, "female", 1, 0)
happitails.client_list[:c3] = Client.new("David", 20, "male", 0, 1)
happitails.client_list[:c4] = Client.new("Stephanie", 30, "female", 0, 3)

puts "The animals to adopt are:"
happitails.adoptable_animals.each {|x, animal| puts animal }
puts
puts "The clients are:"
happitails.client_list.each {|x, client| puts client}
puts
puts @adoptable_animals


