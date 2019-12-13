# Your Code Here
def map(source_array)
  total_array = []
  source_array.length.times do |index|
    total_array.push(yield(source_array[index]))
  end
  total_array
end 

def reduce(source_array, starting_number = 0)
  returned_value = 0 
  source_array.length.times do |index|
    
  end
  returned_value += yield(source_array[index],starting_number)
  returned_value
end 

#source_array = [1,2,3]
unique_value = reduce([1,2,3],100) {|memo, n| memo + n}

print unique_value