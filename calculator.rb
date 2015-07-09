def multiply(numbers)
  total_product=1
  numbers.each do |number|
    total_product=total_product*number
  end
  return total_product
end

def addition(numbers)
  sum = 0
  numbers.each do |number| # iterate over each number
    sum = sum + number # add the number to the total
  end
  return sum # return the total value
end

def main_menu()
  puts "Calculator"
  puts
  
  puts "Select operation or type 'quit' to quit: "
  operation = gets.chomp
  
  if operation == "quit"
    # quit
    return false
  end
  
  if operation == "%"
    percent
    return true
  end
  
  asking_for_numbers = true
  numbers = []
  
  while asking_for_numbers do
    # keep asking for a number
    puts "Enter number or '=': "
    number = gets.chomp
    if number == "="
      # do calculation
      if operation == "+"
        puts addition(numbers)
      elsif operation == "-"
        puts subtraction(numbers)        
      elsif operation == "x"
        puts multiplication(numbers)        
      elsif operation == "/"
        puts division(numbers)
      else
        puts "Unknown operation"
      end
      break
    else
      numbers << number.to_i # add number to array
    end
  end
  return true
end

while true do
  if main_menu() == false # repeat the main menu forever
    # quit
    break
  end
end