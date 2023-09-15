def merge_sort(array)
  n = array.size

  if n < 2
    array
  else
    left_half = merge_sort(array[0...n/2])
    right_half = merge_sort(array[n/2..-1])
    
    merge(left_half, right_half)
  end
end

# example array: [1, 2, 3, 4, 5, 6, 7]

def merge(left_half, right_half, sorted_array = [])
  if left_half.empty?
    sorted_array << right_half
  elsif right_half.empty?
    sorted_array << left_half
  else
    if left_half.first >= right_half.first
      sorted_array << right_half.shift
    else
      sorted_array << left_half.shift
    end
    
    merge(left_half, right_half, sorted_array)
  end

  sorted_array.flatten
end

array = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19].shuffle

print array
puts "\n\n"
print merge_sort(array)
