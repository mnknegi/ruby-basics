
puts "Reading celcius temperature value from a data file: "
num = File.read("temp.dat")
celcius = num.to_i
fahrenheit = (celcius * 9 / 5) + 32
puts "The number is: " + num
print "Result: "
puts fahrenheit
