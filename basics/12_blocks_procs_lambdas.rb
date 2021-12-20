# Blocks in Ruby:
# what exactly are blocks and why dod we need them?
# -> Block is code which you can store in a variable like any other object and run on demand.
# Example a section of code:
a = 4
b = 5
puts a + b
# Store th above section of code in a variable so that we can use it on demand:
addition = lambda { |x, y|
    return x + y
}
puts addition.call(3,4)

# so block is just like a method but only diff is that it is not associated with any object.
# block are themselves object like everything else in ruby

puts addition.class # Proc is the class of block in ruby
puts addition.class.superclass #Object

# Yield: Ruby's most common way for using blocks
def calculation(a, b, operation)
    operation.call(a,b)
end

puts calculation(22, 34, lambda { |a, b| return a+b })
puts calculation(22, 34, lambda { |a, b| return a-b })

# same implementation using yield
def calculate(a, b)
    yield(a,b)
end

puts calculate(22,33) { |a,b| a+b } #block is now no longer an orgument to the method
puts calculate(22,33) { |a,b| a-b } #the block is now implicitly passed in the method

# Note that blocks can be passed implicitly to methods without any parameters. The syntax remains the same.
def foo
    yield
end

puts foo { "Hi! How Are You?" }

