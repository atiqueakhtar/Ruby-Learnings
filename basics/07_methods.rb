# creating a method
def sayHi(name, age=10)
    puts("Hi #{name}! You are #{age+2} years old")
end
sayHi("Atique")
# Hi Atique! You are 12 years old

# cube function:
def cube(num)
    return num*num*num, "Hello", "Hi" #can return multiple values
end
puts(cube(2)[1]) #Hello printed as we accessed 1th index from the returned array

# get the greatest of the 3:
def getGreatest(arr)
    if arr[0]>arr[1] and arr[0]>arr[2]
        return arr[0]
    elsif arr[1]>arr[0] and arr[1]>arr[0]
        return arr[1]
    else
        return arr[2]
    end
end
arr = [43,53,34]
puts(getGreatest(arr))


# Method Practice:
def fun(x)
    x += 1
    puts x
end

a = 2
fun(a) #pass by value
puts a

# o/p:
# 3
# 2

def fun2(x)
    x.concat("!")
    # x.ljust(10, "!")
    puts x
end

a = "Atique"
fun2(a)
puts a

# o/p:
# Atique!
# Atique!

# method definitions create their own scope that's entirely outside of the execution flow.
a = 5

def fun3
    a = 3
end

fun3
puts a #5

a = [1, 2, 3]

# Example of a method definition that mutates its argument permanently
def mutate(array)
  array.pop
end

p "Before mutate method: #{a}"
mutate(a)
p "After mutate method: #{a}"

a = [1, 2, 3]

# Example of a method definition that does not mutate the caller
def no_mutate(array)
  array.last
end

p "Before no_mutate method: #{a}"
no_mutate(a)
p "After no_mutate method: #{a}"

# How do you know which methods mutate the caller and which ones don't? Unfortunately, you have to memorize it by looking at the documentation or through repetition.

arr = ["sdsd", "sd", "sds", "s"]
arr.each { |x| puts x.length }

