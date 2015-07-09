def multiply(numbers)
  total_product=1
  numbers.each do |number|
    total_product=total_product*number
  end
  return total_product
end