# Modules in ruby work similar to classes as they store other methods in them just like classes. Unlike classes modules cannot be instantiated i.e., it's not possible to create objects from a module, therefore modules do not have a method "new".

# Why do we use modules -> With modules we can share a methods between classes. Modules can be included in classes and this makes their methods available in classes.

# It's useful when we want to reuse some methods in certain classes but at the same time keep them in a central place, so we not have to repeat them everywhere.

module Cream
    def cream?
        false
    end
    def crest?
        true
    end
end

class Cookie
    include Cream
end

cookie = Cookie.new
puts cookie.cream?
puts cookie.crest?

# Ex 2
require 'digest'

module Encryption
    def encrypt(str)
        Digest::SHA2.hexdigest(str)
    end
end

class Person
    include Encryption

    attr_accessor :password

    def encrypt_password
        encrypt(@password)
    end
end

person = Person.new
person.password = "Atique@786"
puts person.encrypt_password #2574c2d6ee61777ec6d50be7d66b5a92b660e153996e8ad5b76e4785a75a3a46

# Mixins in Ruby:
# Ruby is a programming language that only allows single inheritance. This means a class can only inherit from one parent class.

# However, there are a lot of situations where it would be advantageous to “inherit” functionality from multiple places.

# Fortunately Ruby provides this functionality as Mixins. A Mixin is basically just a Module that is included into a Class. When you "mixin" a Module into a Class, the Class will have access to the methods of the Module.

# The methods of a Module that are mixed into a class can either be Class Methods or Instance methods depending on how you add the Mixin to the Class.

# Using Modules methods as Instance Methods:
module Greetings
    def hello
        puts "hello"
    end
    
    def bonjour
        puts "bonjour"
    end

    def hola
        puts "hola"
    end
end

class User
    include Greetings
end

user1 = User.new
user1.hola
# User.hola #Error: NoMethodError

# Using Modules methods as Class Methods:
class User
    extend Greetings #using extend keyword to use module methods as class methods
end

User.bonjour

# Using methods of a module as instance and class methods:
module ClassInstanceMethods
    def self.included(base)
        base.extend(ClassMethods)
    end

    def method1
        puts "method1"
    end

    module ClassMethods
        def classMethod1
            puts "classMethod1"
        end
    end
end

class UserMethods
    include ClassInstanceMethods
end

UserMethods.new.method1 #calling instance method
UserMethods.classMethod1 #calling class method

# Mixin over Inheritance? #try to read more on this

# for Ruby, a Class is a Module, as we can see below
puts Class.is_a?(Module) #true
puts Class.is_a?(Object) #true
puts Module.is_a?(Object) #true
puts Module.is_a?(Class) #true

# dive deep into include, extend, prepend:
# use of super in include
module Hello
    def hello
        puts "hello!!"
    end
end

class MyClass
    include Hello
    def hello
        puts "Hi Hello! Let's go!"
        super   #super allows us to execute the parent method
    end
end

MyClass.new.hello
print MyClass.ancestors

# extend
# The extend directive includes all methods from the given module and make them available as class methods in your class
module Color
    def color
        puts "Fruit color"
    end
end

class Fruits
    extend Color
end
puts
Fruits.color
print Fruits.singleton_class.ancestors