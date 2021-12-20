# Declaring and initializing an array:
friends = Array["Adarsh", "Tauseef", "Akil", "Sohail"]
friends[2] = "Dwight"
print(friends[0,3])
# ["Adarsh", "Tauseef", "Dwight"]

# Declaring an array but not initializing in beginning:
mates = Array.new
mates[1] = "Thippu";
mates[4] = "Vinod"
print(mates)
# [nil, "Thippu", nil, nil, "Vinod"]
puts(mates.include? "Thippu") #true
puts(mates.include? nil) #true

# Some Array methods:
print(friends.reverse())
# ["Sohail", "Dwight", "Tauseef", "Adarsh"]
print(friends.sort())
# ["Adarsh", "Dwight", "Sohail", "Tauseef"]

# alternate way of creating array
a = %w(a b c d e f)
print a
# ["a", "b", "c", "d", "e", "f"]

# Exercises
def random_select(array, n)
    # your code here
    arr = []
    for i in 0..n-1
        randomIndex = rand(array.length)
        arr[i] = array[randomIndex]
    end
    return arr
end
arr = [1, 2, 3, 4, 5]
puts random_select(arr, 2)

# Exercise
def sum_of_cubes(a, b)
    # Write your code here
    sum = 0
    for i in a..b
        sum = sum + i*i*i
    end
    return sum
end
puts sum_of_cubes(1, 3)

# Exercise
def kaprekar?(k)
    t = k.to_s.length
    k = k.to_i
    k_sq = (k**2).to_s
    n = k_sq.length
    k_lt = k_sq.slice(0, n-t).to_i
    k_rt = k_sq.slice(n-t, n-1).to_i
    if k_lt + k_rt == k
        return true
    else
        return false
    end
end
puts kaprekar?(297)
