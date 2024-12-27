age = 31
first_name = "Mayank"
last_name = "Negi"

puts first_name + " " + last_name

puts age
puts age + 7

age_after_ten_years = age + 10
puts age_after_ten_years

age = age + age_after_ten_years
puts age

# No type safety
chameleon = 31
chameleon = "some text"
chameleon = 3.14

puts chameleon