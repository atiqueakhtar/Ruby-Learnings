# Real Ultimate Power

# consider a situation where you have to create a series of methods all of which have the same basic structure save for one string, and which can only be one of a certain set of strings. Now, you might say we'll just define one method and accept that one string as a parameter, which we can then use wherever we want. And you'd be right. But, the problem with such an approach is it's not particularly declarative: you don't know exactly what values that optional parameter can accept.

class Doctor
    ["rhinoplasty", "checkup", "interpretive_dance"].each do |action|
        define_method("perform_#{action}") do |argument|
              "performing #{action.gsub('_', ' ')} on #{argument}"
        end
    end
end
  
doctor = Doctor.new
puts doctor.perform_rhinoplasty("nose")
puts doctor.perform_checkup("throat")
puts doctor.perform_interpretive_dance("in da club")