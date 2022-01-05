class Greeting
    def Greeting.hello
      'Hello guys'
    end
end

puts Greeting.instance_methods.include?(:hello)  # => false
puts Greeting.singleton_methods.include?(:hello) # => true

puts Greeting.hello # => "Hello guys"

# Let’s access the eigenclass and inspect what it contains:
class Greeting
    def self.hello
      'hello world!'
    end
  
    def self.eigenclass
      class << self
        self
      end
    end
end

puts Greeting.eigenclass      # => #<Class:Greeting>
puts Greeting.eigenclass.name # => nil

puts Greeting.singleton_methods                  # => [:hello, :eigenclass]
puts Greeting.eigenclass.instance_methods(false) # => [:hello, :eigenclass]