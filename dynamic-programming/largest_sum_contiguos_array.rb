#Largest Sum Contiguos Array
arr  = [[0,1,1,0,1],[0,1,1,1,1],[1,1,1,0,1],[1,1,1,0,1],[0,1,1,1,1]]
#arr = arr.split()
def lsca_brute(arr)

max = 0
n = arr.length

for i in 0..n-1 #for each possible start point
	for j in i..n-1 #for each possible end point
		sum = 0
		for k in i..j #getting sum in bw the two points
			sum = sum + arr[k]
			if sum > max
				max = sum
			end
		end
	end
end 
return max
end
puts lsca_brute(arr)


def lsca_improvement_1(arr)
max = 0
n = arr.length

for i in 0..n-1
	sum = 0 
	arr_comb = []
	for j in i..n-1
		sum = sum + arr[j]
		arr_comb << arr[j]
		if sum > max 
			max = sum
		end
	end
	puts arr_comb.inspect
end
return max
end

puts lsca_improvement_1(arr)


def lsca_dynamic_programming(arr)
	max = 0
	n = arr.length
	dp = Array.new(n)
	if arr[0] > 0
		dp[0] = arr[0]
	else
		dp[0] = 0
	end

	for i in 1..n-1
		if arr[i] + dp[i-1]> 0
		dp[i] = arr[i] + dp[i-1]
		else
		dp[i] = 0
		end
	end

	for i in 0..n-1
		if dp[i] > max 
			max = dp[i]
		end
	end
	return max
end

puts lsca_dynamic_programming(arr)

def lsca_kadane_algo(arr)
	n = arr.length
	sum_so_far = 0
	sum_ending_here = 0
	for i in 0..n-1
		sum_ending_here = sum_ending_here + arr[i]
		if sum_ending_here < 0
			sum_ending_here = 0
			next
		end
		if sum_ending_here > sum_so_far
			sum_so_far = sum_ending_here
		end
	end
	return sum_so_far
end
puts lsca_kadane_algo(arr)
