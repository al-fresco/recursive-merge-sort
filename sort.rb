# merge sort
# split left half of array
# split right half of array
# merge (sort) the halves together

def merge_sort(array)
	if array.size < 2
		array
	else
		left = merge_sort(array[0...array.size/2])
		right = merge_sort(array[array.size/2..-1])

		merge(left, right)
	end
end

def merge(left, right, merged_array = [])
	if left.empty?
		merged_array << right
	elsif right.empty?
		merged_array << left
	else
		if left[0] <= right[0]
			merged_array << left.shift
		else
			merged_array << right.shift
		end

		merge(left, right, merged_array)
	end

	merged_array.flatten
end

test_array = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20].shuffle
print test_array
puts ""
print merge_sort(test_array)