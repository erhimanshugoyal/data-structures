#find the longest plaindromic substring with dynamic programming

str= ARGV[0]
i = 0
j = str.length - 1

def lps_with_dp(str)
	max = 0
	start = 0
	n = str.length
	dp = Array.new(n) {Array.new(n,0)}
	for i in 0..n-1
		dp[i][i] = true
	end

	for i in 0..n-2
		if str[i] == str[i + 1]
		dp[i][i] = true
		start = i
		max = 2
		end
	end	

	for k in 3..n
		for i in 0..(n-k-1)
			j = i + k -1
			if str[i] == str[j] && dp[i+1][j-1]
				dp[i][j] = true
				if k > max 
					start = i
					max = k
				end
			end
		end
	end
	puts start
	puts max
	puts dp.inspect
	return max
	
end

puts lps_with_dp(str)