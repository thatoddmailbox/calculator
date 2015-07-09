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
  if operation == "fib"
    print "Index: "
    num = gets.chomp.to_i
    puts "Result: #{fib(num - 1)}"
    return true
  end
  if operation == "/"
    print "number 1: "
    num1 = gets.chomp.to_f
    print "number 2: "
    num2 = gets.chomp.to_f
    puts "Result: #{division(num1, num2)}"
    return true
  end
  if operation == "-"
    print "number 1: "
    num1 = gets.chomp.to_f
    print "number 2: "
    num2 = gets.chomp.to_f
    puts "Result: #{subtraction(num1, num2)}"
    return true
  end
  if operation == "fib"
    print "Index: "
    num = gets.chomp.to_i
    puts "Result: #{fib(num - 1)}"
    return true
  end
  if operation == "%"
    percent
    return true
  end
  if operation == "f-c"
    print "Fahrenheit temperature: "
    num = gets.chomp.to_f
    puts "#{num} degrees F is #{(((num - 32) / 9) * 5).to_f.round(2)} degrees C"
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
      numbers << number.to_f # add number to array
    end
  end
  return true
end