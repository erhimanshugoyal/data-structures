#Check if number is ugly or not . Ugly numbers are numbers whose only prime factors are 2, 3 or 5. 
number = ARGV[0].to_i
def ugly_or_not(nth_umber)
n = 1
i =1
	while n < nth_umber
	i = i +1
		if is_ugly(i)
			n = n +1
		end
	end
return i
end

def is_ugly(i)

i = maxdivide(i,2)
i = maxdivide(i,3)
i = maxdivide(i,5)

i == 1 ? true : false
end

def maxdivide(i,n)
	while i%n == 0
		i = i / n
	end
	return i
end

puts ugly_or_not(number)


def ugly_or_not_with_dp(nth_number)
ugly_nums = Array.new(nth_number)

next_2 = 2
next_3 = 3
next_5 = 5
i_2= 0
i_3 = 0
i_5 = 0
next_num = 1
ugly_nums[0] = 1
	for i in 1..(nth_number-1)
		next_num = [next_2, next_3,next_5].min 
#		puts ugly_nums.inspect
		ugly_nums[i] = next_num
		if next_num == next_2
			i_2 = i_2 +1
			next_2 = ugly_nums[i_2] * 2
		end
		if next_num == next_3
			i_3 = i_3 +1
			next_3 = ugly_nums[i_3] * 3
		end
		if next_num == next_5
			i_5 = i_5 + 1
			next_5 = ugly_nums[i_5] * 5
		end
#		puts next_num
	end
	return next_num
end

puts ugly_or_not_with_dp(number)