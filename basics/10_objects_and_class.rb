class Book
    attr_accessor :title, :author, :pages
    def initialize()
        puts "creating book"
    end
end

book1 = Book.new()
book1.title = "Harry Potter"
book1.author = "JKR"
book1.pages = 400

book2 = Book.new()
book2.title = "Sherlock Holmes"
book2.author = "SS"
book2.pages = 500

puts book1.title
puts book2.title

# initialize method:
class Person
    attr_accessor :name, :age, :gender
    def initialize(naming)
        puts "creating person #{naming}"
    end
end

person1 = Person.new("Atique")
person1 = Person.new("Armaghan")

# scenario 2:
class Car
    attr_accessor :model, :color, :price
    def initialize(model, color, price)
        @model = model
        @color = color
        @price = price
    end
end

car1 = Car.new("Lambo", "Red", 450000)
car2 = Car.new("Ferrari", "Blue", 360000)
puts car1.model
puts car2.color

# object methods/instance methods:
class Student
     attr_accessor :name, :stream, :gpa     #attr_accessor takes symbol as arguments

     def initialize(name, stream, cgpa)
        @name = name
        @stream = stream
        @gpa = cgpa
     end

     def has_honors
        if(@gpa > 3.5)
            return true
        else
            return false
        end
     end
end

student1 = Student.new("Jim", "Business", 2.6)
student2 = Student.new("Pam", "Art", 3.6)
puts student1.has_honors
puts student2.has_honors

# quiz game:
class Question
    attr_accessor :question, :answer
    def initialize(qn, ans)
        @question = qn
        @answer = ans
    end
end

q1 = "What is Germany's Capital?\n(a)Moscow\n(b)Berlin"
q2 = "What is New Zealand's Capital?\n(a)Christchurch\n(b)Wellington"
q3 = "What is Malaysia's Capital?\n(a)Kuala Lumpur\n(b)Malacca"

question_ans = [
    Question.new(q1, "b"),
    Question.new(q2, "b"),
    Question.new(q3, "a"),
]

def execute_quiz(qn_set)
    score = 0
    for question in qn_set
        puts question.question
        answer = gets.chomp()
        if answer == question.answer
            score += 1
        end
    end
    puts "Your score: #{score} / #{qn_set.length}"
end

# execute_quiz(question_ans)

# inheritance in OOP in ruby:
class Chef
    def make_special_dish
        puts "Speacial dish made"
    end
    def make_pasta
        puts "Pasta made"
    end
    def make_noodles
        puts "Noodles made"
    end
end

class ItalianChef < Chef
    def make_special_dish
        puts "Speacial Italian dish made"
    end
    def make_pasta
        puts "Italian Pasta made"
    end
end

ichef = ItalianChef.new
ichef.make_pasta

# instance methods v/s class methods
# Till now we saw only instance methods and not class methods
# class methods are where we put functionality that does not pertain to individual objects. Objects contain state, and if we have a method that does not need to deal with states, then we can just use a class method.
# When defining a class method, we prepend the method name with the reserved word "self."

# similarly instance variables v/s class variables
# Just as instance variables capture information related to specific instances of classes (i.e., objects), we can create variables for an entire class that are appropriately named class variables.
# Class variables are created using two @ symbols like so: "@@"

# Example showing both instance and class methods and variables used in a code:
class GoodDog
    @@no_of_dog = 0 #class method

    def initialize  #instance method(constructor)
        @@no_of_dog += 1
    end

    def self.total_dogs #class method
        return @@no_of_dog
    end
end

dog1 = GoodDog.new
dog2 = GoodDog.new
puts "Total Dogs: #{GoodDog.total_dogs}"

# self, inside of an instance method, references the instance (object) that called the method - the calling object. Therefore, self.weight= is the same as sparky.weight=, in our example.

# self, outside of an instance method, references the class and can be used to define class methods. Therefore if we were to define a name class method, def self.name=(n) is the same as def GoodDog.name=(n).

# Exercises
# If we have a Car class and a Truck class and we want to be able to go_fast, how can we add the ability for them to go_fast using the module Speed? How can you check if your Car or Truck can now go fast?
module Speed
    def go_fast
        puts "I am a #{self.class} and going super fast!"
    end
end
  
class Car
    include Speed
    def go_slow
        puts "I am safe and driving slow."
    end
end

class Truck
    include Speed
    def go_very_slow
        puts "I am a heavy truck and like going very slow."
    end
end

# small_car = Car.new
# small_car.go_fast

# Exercise
class Cube
    attr_reader :volume # add a getter method to enable access
  
    def initialize(volume)
      @volume = volume
    end
end
  
my_cube = Cube.new(1000)
p my_cube.instance_variables
p my_cube.instance_variable_get("@volume")
p my_cube.volume