p eval("43+1")
eval("def fun; 43; end")
# p fun

puts fun < eval("fun+1")

# eval using binding:
def get_binding
    binding
end
   
class Monk
    def get_binding
    binding
    end
end
   
puts eval("self", get_binding)
puts eval("self", Monk.new.get_binding)

# TOPLEVEL_BINDING with eval:
# Ruby provides with a constant TOPLEVEL_BINDING, which is a Binding object that always represents the top-level scope of your program.
# Here's an example that uses TOPLEVEL_BINDING with eval that creates methods in the main scope from inside a class.
# TOPLEVEL_BINDING
class RubyMonk
    def self.create_book(book)
      eval("def #{book}; 'created'; end", TOPLEVEL_BINDING)
    end
end
  
RubyMonk.create_book :regular_expressions

puts regular_expressions

#eval v/s define_method:
# In this section, we'll benchmark the performance of methods created by define_method and those created through eval.
require 'benchmark'

class Monk
  eval "def zen; end"

  define_method(:zen_block) {}
end

monk = Monk.new

Benchmark.bmbm do |x|
  x.report("eval zen: ") { 10_000.times { monk.zen } }
  x.report("define_method zen: ") { 10_000.times { monk.zen_block } }
end
# As we can see from the results, the methods defined using eval() performed better than those created using define_method.
# eval itself performs poorly though methods created with it are quick. This is worth noting, because if you need to create a lot of new methods at runtime (a very rare scenario), define_method is the better option.
require 'benchmark'

# A major difference from the previous
# benchmark is that in order to measure
# the performance of method creation 
# (as opposed to method execution), we're 
# ensuring that we create a new method in 
# each iteration of the benchmark loop

class Monk
  def with_eval(unique_label)
    eval "def zen_#{unique_label}; end"
  end

  # define_method is a private class method.
  # We wrap it in our own public class method 
  # so we can use it from outside the class
  def self.with_define_method(unique_label)
    define_method("zen_block_#{unique_label}") {}
  end
end

monk = Monk.new 

Benchmark.bmbm do |x|
  x.report("eval zen: ") do 
    2000.times { |i| monk.with_eval(i) }
	end
	x.report("define_method zen: ") do 
  	2000.times { |i| Monk.with_define_method(i) }
	end
end
