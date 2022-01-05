# Inside of a instance method:

# self is a special variable that points to the object that "owns" the currently executing code.
# In the code below, reflect is an instance method. It belongs to the object we created via Ghost.new. So self points to that object.
class Ghost
    def reflect
        self    #here self will reflect to the object this code belongs to
    end
end
g = Ghost.new
puts g.reflect == g # => true
puts g.reflect
puts g
#<Ghost:0x0000012d23829550>
#<Ghost:0x0000012d23829550>

# Inside of a class method:
class Ghost
    def self.reflect
        self
    end
end

puts Ghost.reflect == Ghost #true

module Man
    def self.reflect
        self
    end
end

puts Man == Man.reflect
# Classes and modules are treated as objects in Ruby

# Inside Mixin methods:
# Instance methods
module Brake
    def break
        self
    end
end

class Car
    include Brake
end

car1 = Car.new
puts car1 == car1.break

# Class methods
module BikeBrake
    def brake
        self
    end
end

class Bike
    extend BikeBrake
end

puts Bike == Bike.brake

