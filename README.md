# Ruby-Learnings
- greeting = 'Hello' (This tells Ruby to associate the greeting with the String object whose value is 'Hello'. In Ruby, greeting is said to reference (or point to) the String object).

![image](https://user-images.githubusercontent.com/48538467/146672767-5ae13ff0-a667-401b-b430-4ac2205deba5.png)

- Pass by value, as you’ll recall, means copying the original objects, so the original object cannot be mutated. Since immutable objects cannot be changed, they act like Ruby passes them around by value.

```ruby
def increment(a)
  a = a + 1
end
b = 3
puts increment(b)    # prints 4
puts b               # prints 3
```

- Rubyists typically want to name those getter and setter methods using the same name as the instance variable they are exposing and setting:
```ruby
class GoodDog
  def initialize(name)
    @name = name
  end

  def name                  # This was renamed from "get_name"
    @name
  end

  def name=(n)              # This was renamed from "set_name="
    @name = n
  end

  def speak
    "#{@name} says arf!"
  end
end

sparky = GoodDog.new("Sparky")
puts sparky.speak
puts sparky.name            # => "Sparky"
sparky.name = "Spartacus"
puts sparky.name            # => "Spartacus"
```

- You'll notice that writing those getter and setter methods took up a lot of room in our program for such a simple feature. And if we had other states we wanted to track, like height or weight, the class would be even longer. Because these methods are so commonplace, Ruby has a built-in way to automatically create these getter and setter methods for us, using the attr_accessor method.

```ruby
class GoodDog
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def speak
    "#{@name} says arf!"
  end
end

sparky = GoodDog.new("Sparky")
puts sparky.speak
puts sparky.name            # => "Sparky"
sparky.name = "Spartacus"
puts sparky.name            # => "Spartacus"
```