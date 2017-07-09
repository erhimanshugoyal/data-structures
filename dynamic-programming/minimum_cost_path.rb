#Find minimum cost path
arr = [[0,1,1,0,1],[1,1,1,0,1],[1,1,1,0,1],[0,1,1,1,1]]
arr= [[1,2,3],[4,8,2],[1,5,3]]
m = ARGV[0].to_i
n = ARGV[1].to_i
def min_cost_path_without_dp(arr,m,n)
if m < 0 || n < 0
	return 10000
end 
if m==0 && n==0
	return arr[m][n]
end
return arr[m][n] + [min_cost_path_without_dp(arr,m-1,n), min_cost_path_without_dp(arr,m,n-1), min_cost_path_without_dp(arr,m-1,n-1)].min
end

#puts min_cost_path_without_dp(arr,m,n)

def min_cost_path_with_dp(arr,row,col)
m = arr.length
n= arr.first.length
puts col
if row > m || col > n
	return "Out Of Bound count"
end

dp = Array.new(m) {Array.new(n,nil)}
dp[0][0] = arr[0][0]
for i in 1..m-1
	dp[i][0] = dp[i-1][0] + arr[i][0]
end

for j in 1..n-1
	dp[0][j] = dp[0][j-1] + arr[0][j]
end

for i in 1..m-1
	for j in 1..n-1
			dp[i][j] = arr[i][j] + [dp[i-1][j], dp[i][j-1], dp[i-1][j-1]].min
	end
end

return dp[row][col]

end

puts min_cost_path_with_dp(arr,m,n)
