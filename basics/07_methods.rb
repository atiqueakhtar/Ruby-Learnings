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