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
  length = 8
  array0 = array.length-1-0 7
  array1 = array.lenght-1-1 6
  array2 = array.length-1-2 5
  array3 = length-1-3 4
  stop here. do the first half if length is even
    index last piece for even number = lenght/2 - 1.
    if lenght = 9
      0-8, 1-7, 2-6, 3-5, 4
      so do the first length-1 / 2.
        with this formula put it in a loop
  if array.length.even?
    lastloop = array.length/2 - 1
    i = 0
    while i <= lastloop
      array[i] = array[array.length-1-i]
      i += 1
    end
    return array
  else
