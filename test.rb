var1 = nil 
var2 = 3 && var1

p var2

source_array = [ false, nil, nil, nil, true]

def newmethod(array)
  return_value = nil
  array.length.times do |index|
    return_value = yield(return_value, array[index])
  end
  return_value
end

newmethod(source_array){|memo,n| memo || n }