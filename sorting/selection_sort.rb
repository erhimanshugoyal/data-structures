#Selection sort find the minimum value in the list and swaps it with the value in the current position and repeats 
#it untill the entire array is sorted.


def selection_sort(array)
	pass = 0
	while pass <= array.length - 1 do
		min = pass
		next_val = min +1
		while next_val < array.length do
			if array[min] > array[next_val]
				min = next_val
			end
			next_val = next_val + 1
		end
		temp = array[min]
		array[min] = array[pass]
		array[pass] = temp
		pass++
	end
	return array
end