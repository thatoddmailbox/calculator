require_relative "./mainmenu"

def root(num_1)
  return math.sqrt(num_!)
end

def division(num1,num2)
  return "#{num1/num2}" 
end

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

while true do
  if main_menu() == false # repeat the main menu forever
    # quit
    break
  end
end

