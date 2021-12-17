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
