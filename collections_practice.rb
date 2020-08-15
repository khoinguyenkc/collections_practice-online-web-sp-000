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
  array[2], array[1] = array[1], array[2]
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
      array = swap_elements_from_to(array, i, array.length-1-i)
      i += 1
    end
    return array
  end

end

print reverse_array([1,4,3])
print reverse_array([1,2,3,4])

def kesha_maker(array)
  newarray = []
  array.each do |string|
    arrayofchars = string.split("")
    arrayofchars[2] = "$"
    newarray << arrayofchars.join
  end
  return newarray
end

print kesha_maker(["its", "going", "down", "yelling", "timber"])


def find_a(array)
  arrayofas = array.select do |string|
    #if this block returns true, the "string" will be added to the return array
    arrayofchars = string.split("")
    arrayofchars[0] == "a" ? true : false
  end
  arrayofas
end
print find_a(["aha", "baha", "alas"])

def sum_array(array)
  #array.inject { |sum, n| sum + n }
  sumsofar = 0
  array.each do |item|
    sumsofar += item
  end
  sumsofar
end

puts sum_array([2,4,6])

def add_s(array)
  array.each_with_index do | string, index |
    array[index] = "#{string}s" if index != 1
  end
  array
end

print add_s(["aha", "baha", "alas"])

def swap23(array)
    newarray = [ array[2], array[1]]
    array[1] = newarray[0]
    array[2] = newarray[1]
    #interesting: the above work, but the below doesnt
    #i expected both ways to not work
    #array[1] = array[2]
    #array[2] = array [1]
    return array
end
puts swap23([5,8,15,2,1])
