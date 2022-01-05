# Threads make your Ruby programs do multiple things at the same time.

# Things like:

# Reading multiple files
# Handling multiple web request
# Making multiple API connections
# As a result of using threads, you’ll have a multi-threaded Ruby program, which is able to get things done faster.

# Creating Ruby Threads
Thread.new{ puts "My name is Atique" }

t = Thread.new {puts 10**10}
puts "Hello"
t.join

# If you want to create multiple threads you can put them inside an array & call join on every thread.
threads = []
5.times {
    threads << Thread.new{puts 1}
}
threads.each(&:join)

# Untangling Ruby Threads

# The Global Interpreter Lock:
# MRI has a Global Interpreter Lock, often called the GIL, and having a high level understanding of it is important to understanding how we write multi-threaded code in Ruby. Basically the GIL prevents multiple Ruby threads from executing at the same time. This means that no matter how many threads you spawn, and how many cores you have at your disposal, MRI will literally never be executing Ruby code in multiple threads concurrently. Note that this is not the case for JRuby or Rubinius which do not have a GIL and offer true multi-threading.