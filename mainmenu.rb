def main_menu()
  puts "Calculator"
  puts
  
  puts "Select operation or type 'quit' to quit: "
  operation = gets.chomp
  
  if operation == "quit"
    # quit
    return false
  end
  
  if operation == "root"
    print "Number 1: "
    num1 = gets.chomp.to_i
    print "Number 2: "
    num2 = gets.chomp.to_i
    puts "Result: #{root(num1, num2)}"
    return true
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
      result = 0
      if operation == "+"
        result = addition(numbers)
      elsif operation == "-"
        result = subtraction(numbers)        
      elsif operation == "x"
        result = multiply(numbers)        
      elsif operation == "/"
        result = division(numbers)        
      elsif operation == "^"
        result = power(numbers)
      else
        result = "Unknown operation"
      end
      puts "Result: #{result}"
      break
    else
      numbers << number.to_i # add number to array
    end
  end
  return true
end