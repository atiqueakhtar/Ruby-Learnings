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