str1 = ARGV[0].gsub(' ','-')
str2 = ARGV[1].gsub(' ','-')
m = str1.length
n = str2.length

def edit_distance_with_dp(str1,str2,m,n)
dp = Array.new(m+1) {Array.new(n+1,0)}	
for i in 0..m
	for j in 0..n
		if i==0
			dp[i][j] = j
		elsif j ==0
			dp[i][j] = i
		elsif (str1[i-1] == str2[j-1])
			dp[i][j] = dp[i-1][j-1]
		else
			dp[i][j] = 1 + min(dp[i][j-1],dp[i-1][j],dp[i-1][j-1])
		end
	end
end
return dp[m][n]
end
def min(a,b,c)
%W(#{a} #{b} #{c}).min.to_i
end
puts edit_distance_with_dp(str1,str2,m,n)