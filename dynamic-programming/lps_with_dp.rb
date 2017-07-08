#find the longest plaindromic subsequence with dynamic programming

str= ARGV[0]
i = 0
j = str.length - 1

def lps_with_dp(str)
	n = str.length
	dp = Array.new(n) {Array.new(n,0)}
	for i in 0..n-1
		dp[i][i] = 1
	end

	for k in 2..n
		for i in 0..(n-k)
			j = i + k -1
			if str[i] == str[j] && k == 2
				dp[i][j] = 2
			elsif str[i] == str[j]
				dp[i][j] = 2 + dp[i+1][j-1]
			else
				dp[i][j] = [dp[i][j-1],dp[i+1][	j]].max
			end
		end
	end

	return dp[0][n-1]
	
end

puts lps_with_dp(str)