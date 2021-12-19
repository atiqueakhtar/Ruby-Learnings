# Unlike in most programming languages, Ruby strings are mutable: you can change them after they are declared.

name = "Atique"
age = "23"

puts ("We are going to talk about " + name + ".")
puts (name + " likes reading articles.")
puts (name + " is " + age + " years old.")
# puts (name + " did not like reading when he was " + age - 3)

name = "Helen"
age = 74
gpa = 4.56
flaws = nil
isMale = false
isFemale = true
phrase = "    Atique AkHTar "

# string methods:
puts(name.upcase())
puts(name.downcase())
puts(phrase.strip()) #deletes leading and trailing blank spaces
puts(phrase.strip().length())
puts(phrase.include? "tique") #true
puts(phrase.strip()[0,phrase.strip().length()-1]) #Atique AkHTa
puts(phrase.strip().index("kHT")) #8

# accessing string elements:
str = "Hi! My name is Atique Akhtar"
# passing Two arguments which are separated by a comma that returns characters starting from the 1st index and the 2nd index is the number of characters
puts str[0, str.length] #Hi! My name is Atique Akhtar
# using range operators in passed arguments
puts str[0 .. str.length - 1] #Hi! My name is Atique Akhtar (using range operator here)

puts str.concat("!")
puts str * 3 #Hi! My name is Atique Akhtar!Hi! My name is Atique Akhtar!Hi! My name is Atique Akhtar!
puts str.slice(2,4) #! My

# Some string exercises:
str1 = "Learning"
str2 = "Ruby"
puts "Hello".length + "World".length #10

puts str2.prepend(str1) #LearningRuby (mutating str2 here)
puts str2 #LearningRuby

puts str2.delete "aeiu" #LrnngRby (not mutating the string)
puts str2 #LearningRuby

puts str2.delete! "aeiu" #LrnngRby (mutating str2)
puts str2 #LrnngRby

str3 = "Ruby"
str4 = "<3"
puts str3.concat str4*3 #Ruby<3<3<3 (mutating str3)
puts str3 #Ruby<3<3<3

str5 = "Ruby"
str6 = "<>"
puts str5.ljust(10, str6) #Ruby<><><> (not mutating the string)
puts str5 #Ruby