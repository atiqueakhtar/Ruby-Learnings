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