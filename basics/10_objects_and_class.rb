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
     attr_accessor :name, :stream, :gpa

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

execute_quiz(question_ans)

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