###scratch_class5


=begin
class Taco
  attr_accessor :meat, :veggies

  def initialize(meat,veggies)
    @meat = meat
    @veggies = veggies
  end
end

my_taco = Taco.new('chicken', %w(lettuce tomato onion))
puts my_taco.meat
p my_taco.veggies
=end



#class Person
#    attr_reader :name   #can only be set 1 time
#    attr_accessor :age   #allows to be changed multiple times
#
#    def initialize(name, age)
#      @name = name
#      @age = age
#    end
#end
#
#Brian = Person.new('Brian', 33)
#
#puts Brian.age
#puts Brian.name
#
##Brian.name = 'Mike'
#Brian.age = 35
#
#puts Brian.age


=begin
class Vehicle
  attr_accessor :name, :speed

  def initialize(name, speed)
    @name = name
    @speed = speed
  end

  def display_speed
    "Wow!!!! We are Going #{speed} MILES PER HOUR"
  end

end

class Delorean < Vehicle

end

v = Vehicle.new()
puts v.speed
my_delorean = Delorean.new()
puts my_delorean.display_speed


def ride_curator(vehicle)
  puts "I give #{vehicle.name}" a 10 out of 10"
end


class Person

  ride_curator(Vehicle.new())
  ride_curator(Delorean.new())



#  MONKEY PATCHING


=end

puts 'Brian'.concat('John')

class String
  def concat(argument)
    puts "SORRY SUCKA, No adding here!"
  end
end


puts 'Brian'.concat('John')

puts cat





an inherent