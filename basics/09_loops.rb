# while loop:
index = 1
while index <= 5
    puts index
    index += 1
end

# fibonacci series till "n" using while loop:
# 1 1 2 3 5 8
def fib(n)
    a = 0
    b = 1
    while a <= n
        puts(a)
        c = a + b
        a = b
        b = c
    end
end
n = gets.chomp().to_i
fib(n)

# for loops:
cities = ["Bokaro", "Gaya", "Kolkata", "Patna", "Ranchi"]
for city in cities
    puts city
end

# lopping via array.each
cities.each do |city|
    puts("Apna_#{city}")
end

# another way:
for i in 0..4
    puts "..#{cities[i]}"
end

# another way:
5.times do |i|
    puts "#{cities[i]}_times"
end