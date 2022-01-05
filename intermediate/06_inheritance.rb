class Rectangele
    def initialize(length, breadth)
        @length = length
        @breadth = breadth
    end

    def perimeter
        2*(@length+@breadth)
    end
end

class Square < Rectangele
    def initialize(side)
        @length = side
        @breadth = side
    end
end

rec = Rectangele.new(2,3)
puts rec.perimeter

sq = Square.new(3)
puts sq.perimeter

# use of super in method overriding:
# A common use of inheritance is to have overridden methods in a subclass do something in addition to what the superclass method did, rather than something entirely different
class Animal
    def move
        "I move"
    end
end

class Bird < Animal
    def move
        super + " by flying."
    end
end

puts Animal.new.move    #I move
puts Bird.new.move  #I move by flying.