###---- RELEASE 0 ----###

numbers = [5, 17, 23, 36, 42, 58, 66, 78, 80]

def search_array(arr, x)
  numbers = arr
  index = 0 
  while index < numbers.length
    numbers.each do |search|
      if search == x
        p index
      end
      index += 1
    end
  end
end

 search_array(numbers, 36)

###----- RELEASE 1 ------### 

def fib(count)
  arr = [0, 1]
  count.times do
    arr << arr[-1] + arr[-2]
  end
  arr.pop
  arr.pop
  p arr[-1]
end

p fib(100)

###---- RELEASE 2 ----###

#PSUEDOCODE FOR BUBBLE SORTING#
# Create a method to receive an array   
# The method will run by comparing the first number with the number to its right and swap it to the left if its smaller 
# Method will continue to do this until numbers in array are in ascending order then it will break 
# Method will also count if there is a swap made and break when there are no more swaps 


arr = [63, 20, 17, 88, 11, 2]
puts "Array before sorting:"
p arr 

def bubble(arr)
  n = arr.length
  loop do 
    swap = 0 
     (n-1).times do |x|
       if arr[x] > arr[x+1]
         arr[x], arr[x+1] = arr[x+1], arr[x]
         swap = 1
       end
      end
    break if swap == 0
  end
  arr
end

puts "Array after sorting:"
p bubble(arr)

