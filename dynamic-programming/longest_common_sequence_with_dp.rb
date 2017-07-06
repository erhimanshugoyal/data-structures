#Longest Common Subsequence Problem Solved using Ruby
#X = m[X(1..m)]
#Y = n[Y(1..n)]
#Eg. ABCD and ACD are given, the LONGEST COMMON SUBSEQUENCE would be ACD.
i = 0
j = 0
str1 = ARGV[0]
str2 = ARGV[1]
m = str1.length
n = str2.length

def lcs_with_dp(str1,m,str2,n)
	#Two Loops for intializing the end columns to 0
	dp = Array.new(1024) {Array.new(1024)}
	for i in 0..m
		dp[i][n] = 0
	end
	for j in 0..n
		dp[m][j] = 0
	end

	for i in (m-1).downto(0)
		for j in (n-1).downto(0)
			dp[i][j]=dp[i+1][j+1]
			if str1[i] == str2[j]
				dp[i][j] = dp[i][j] + 1
			end
			if dp[i][j+1]> dp[i][j]
				dp[i][j] = dp[i][j+1]
			end
			if dp[i+1][j]> dp[i][j]
				dp[i][j] = dp[i+1][j]
			end
		end
	end
end

puts lcs_with_dp(str1,m,str2,n)
