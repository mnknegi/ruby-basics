
student = Object.new

def student.name
    "John Appleseed"
end

def student.standard
    "Fifth"
end

def student.age
    11
end

def student.is_monitor? #question mark can be used as a condition for asking a question.
false
end

#print "The name of the student is: "
#print student.name + ", and is in "
#print student.standard + " standard and his age is "
#print "%d" %student.age + " years. He is "
#print student.is_monitor? ? "" : "not" + " the monitor of the class."

puts "The name of the student is: #{student.name}, and he is in #{student.standard} standard. His age is #{student.age} and he is #{student.is_monitor? ? "" : "not"} the monitor of the class."
