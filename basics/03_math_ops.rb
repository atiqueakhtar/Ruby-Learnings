num1 = 23.0
num2 = 4
puts(num1.to_s + " - " + num2.to_s + " = " + (num1-num2).to_s)
puts(num1.to_s + " * " + num2.to_s + " = " + (num1*num2).to_s)
puts(num1.to_s + " + " + num2.to_s + " = " + (num1+num2).to_s)
puts(num1.to_s + " / " + num2.to_s + " = " + (num1/num2).to_s)
puts(num1.to_s + " ^ " + num2.to_s + " = " + (num1**num2).to_s)

# 23.0 - 4 = 19.0
# 23.0 * 4 = 92.0
# 23.0 + 4 = 27.0
# 23.0 / 4 = 5.75
# 23.0 ^ 4 = 279841.0

num3 = -34.43
puts(num3.round())
puts(num3.abs())
puts(num3.ceil())
puts(num3.floor())

# -34
# 34.43
# -34
# -35

# Math class:
puts(Math.sqrt(num1));
puts(Math.log(num1));
 