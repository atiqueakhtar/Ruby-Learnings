puts("Enter your name: ")
name = gets.chomp() #to avoid enter by user being recorded as new line
puts("Enter your age: ")
age = gets.chomp()
puts("Hello " + name + "! Your age is " + age)

puts("Enter a number: ")
num1 = gets.chomp().to_f
puts("Enter another number: ")
num2 = gets.chomp().to_f
print("The sum is ") 
print(num1 + num2)
