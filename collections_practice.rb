require 'pry'

def sort_array_asc(array)
  array.sort
end
puts sort_array_asc([1,4,3])

puts sort_array_asc([25, 7, 1])

def sort_array_desc(array)
  array.sort do | a, b |
    if a < b
      1
    elsif a > b
      -1
    else
      0
    end
  end
end

puts sort_array_desc([1,4,3])

def sort_array_char_count(array)
  array.sort do | a, b |
    if a.length < b.length
      -1
    elsif a.length > b.length
      1
    else
      0
    end
  end
end

puts sort_array_char_count(["i", "love", "you"])

def swap_elements(array)
  array[1], array[2] = array[2], array[1]
  array
end


puts swap_elements([1,4,3,5,6])


def swap_elements_from_to(array, index, destination_index)
  array[index], array[destination_index] = array[destination_index], array[index]
  array
end

def reverse_array(array)

  if array.length.even?
    lastloop = array.length/2 - 1
    i = 0
    while i <= lastloop
      array = swap_elements_from_to(array, i, array.length-1-i) 
      i += 1
    end
    return array

  else #aka out-dated
    lastloop = (array.length-1) / 2
    i = 0
    while i <= lastloop
      array = swap_elements_from_to(array, array[i], array[array.length-1-i])
      i += 1
    end
    return array
  end

end

print reverse_array([1,4,3])
print reverse_array([1,2,3,4])
