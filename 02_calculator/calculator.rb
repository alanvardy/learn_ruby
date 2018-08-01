# write your code here

def add(first_num, second_num)
  first_num + second_num
end

def subtract(initial_num, subtracted_num)
  initial_num - subtracted_num
end

def sum(array)
  total = 0
  array.each do |item|
    total += item
  end
  total
end

def multiply(*args)
  total = 1
  args.each do |item|
    total *= item
  end
  total
end

def power(base, exponent)
  total = 1
  exponent.times do
    total *= base
  end
  total
end

def factorial(number)
  total = 1
  while number > 1
    total *= number
    number -= 1
  end
  total
end
