
print "Hello, please enter a celcius value: "
celcius = gets
fahrenheit = (celcius.to_i * 9 / 5) + 32
puts "Saving result to output file 'temp.dat'"
fh = File.new("temp.dat", "w") # `w` for `write`.
fh.puts fahrenheit
fh.close
