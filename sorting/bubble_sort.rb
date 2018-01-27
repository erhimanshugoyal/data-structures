#Bubble Sort compares element by element and swaps if needed.

def bubble_sort(array)
	pass = array.length - 1
		while pass >=0 do 
			i = 0
			while i <= pass - 1 do
				if array[i] > array[i+1]
					temp = array[i]
					array[i] = array[i+1]
					array[i+1] = temp
				end
				i = i +1
			end
			pass = pass -1 
		end
	return array
end