def main_menu()
  puts "Calculator"
  puts
  
  print "Select operation or type 'quit' to quit: "
  operation = gets.chomp
  
  if operation == "quit"
    # quit
    return false
  end
  
  if operation == "root"
    print "Number: "
    num = gets.chomp.to_i
    puts "Result: #{root(num)}"
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
    print "Enter number or '=': "
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