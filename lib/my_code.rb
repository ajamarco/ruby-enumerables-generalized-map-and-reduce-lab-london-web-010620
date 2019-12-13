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
  if starting_number == 0 
    source_array.length.times do |index|
      returned_value = yield(returned_value, source_array[index])
    end 
    
  end
  returned_value
end 

