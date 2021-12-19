# Ruby-Learnings
- greeting = 'Hello' (This tells Ruby to associate the greeting with the String object whose value is 'Hello'. In Ruby, greeting is said to reference (or point to) the String object).
![image](https://user-images.githubusercontent.com/48538467/146672767-5ae13ff0-a667-401b-b430-4ac2205deba5.png)

- Pass by value, as you’ll recall, means copying the original objects, so the original object cannot be mutated. Since immutable objects cannot be changed, they act like Ruby passes them around by value.
```ruby
def increment(a)
  a = a + 1
end
b = 3
puts increment(b)    # prints 4
puts b               # prints 3
```
