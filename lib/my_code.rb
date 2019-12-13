# Your Code Here
def map(source_array)
  total_array = []
  source_array.length.times do |index|
    total_array.push(yield(source_array[index]))
  end
  total_array
end 

def reduce(source_array, starting_number = nil)
  returned_value = nil
  if !starting_number
    source_array.length.times do |index|
      returned_value = yield(returned_value, source_array[index])
    end 
  else
    returned_value = starting_number
    source_array.length.times do |index|
      returned_value = yield(returned_value, source_array[index])
    end
  end
  returned_value
end 

