#Shell Sort - Similar to insert sort, but takes n-gaps.

def shell_sort(array)
	#let's take the gap as 2
	gap = 2
	while gap > 0 do
		k = gap +1
		while k <= array.length do
			puts k
			pivot = array[k]
			j = k
			while (j > gap && array[j-gap] > pivot) do
				array[j] = array[j-gap]
				j = j - gap
			end 
			array[j] = pivot
			k = k + 1
		end
		gap = gap/2
	end
	return array
end