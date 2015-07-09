<<<<<<< HEAD
<<<<<<< HEAD


def division(num1,num2)
  return "#{num1/num2}" 
  end



=======
=======
def power(numbers)
  total_product=0
  first_time=true
  numbers.each do |number|
    if first_time==true
      total_product=number
      first_time=false
    else
      total_product=total_product**number
    end
  end
  return total_product
end    

>>>>>>> 5350a07844aaa3cdc7fe6325ab646827917bc92b
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
      puts "Reuslt: #{result}"
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
>>>>>>> f8b8dbaa1a82810246d3194c9a06209721f19198
