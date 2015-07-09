def percent
puts "enter a number to take a percentage of"
number = gets.chomp

puts "enter a percentage to take out oi that number"
percentage = gets.chomp

decimal = (percentage.to_f/100).to_f
final_percent = decimal * (number.to_i)
puts final_percent 
end