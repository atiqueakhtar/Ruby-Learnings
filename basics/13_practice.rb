def fun(b)
    puts "b id before assignment #{b.object_id}"
    b += 1
    puts "b id after assignment #{b.object_id}"
    puts b
end

a = 2
puts "a id #{a.object_id}"
fun(a)
puts "a id #{a.object_id}"
puts a

###############################################

def fun2(b)
    puts "b id before concat #{b.object_id}"
    b.concat(" Akhtar")
    puts "b id after concat #{b.object_id}"
    puts b
end

a = "Atique"
puts "a id #{a.object_id}"
fun2(a)
puts "a id #{a.object_id}"
puts a

puts Array.ancestors                   # Array's ancestor chain
 # [Array, Enumerable, Object, Kernel, BasicObject]
puts Array.included_modules            # Array included modules
 # [Enumerable, Kernel]
puts Array.superclass                  # the parent class
 # Object
puts Array.superclass.included_modules # parent's included modules
 # [Kernel]
puts Array.superclass.superclass       # the grandparent class
 # BasicObject