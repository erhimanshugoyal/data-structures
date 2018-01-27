#Insertion Sort - Each iteration removes an element from input data and inserts it into the correct position


def insertion_sort(array)
	i = 1
	while i <= array.length - 1 do
		pivot = array[i]
		j = i
		while(array[j -1] > pivot && j > 0) do
			array[j] = array[j -1]
			j = j - 1
		end
		array[j] = pivot
		i = i + 1
	end
	return array
end