#MAximum sie square sub matrix with all 1's
arr = [[0,1,1,0,1],[1,1,1,0,1],[1,1,1,0,1],[0,1,1,1,1]]
#arr = ARGV
#arr = arr.map{|a| a.map{|a| a.to_i}}
def max_sub_matrix(arr)
m = arr.length
n= arr.first.length
dp = Array.new(m) {Array.new(n,0)}

for i in 0..n-1
	dp[0][i] = arr[0][i]
end

for i in 0..m-1
	dp[i][0] = arr[i][0]
end

for i in 1..m-1
	for j in 1..n-1
		if arr[i][j] == 1
			dp[i][j] = [dp[i-1][j], dp[i][j-1],dp[i-1][j-1]].min + 1
		else
			dp[i][j] = 0
		end
	end
end
max_of_dp = dp[0][0]; max_i = 0; max_j = 0;
for i in 1..m-1
	for j in 1..n-1
		if max_of_dp < dp[i][j]
			max_of_dp = dp[i][j]
			max_i = i
			max_j = j
		end
	end
end
	
 for i in max_i.downto(max_i-max_of_dp)
    for j in max_i.downto(max_j-max_of_dp)
      puts arr[i][j].inspect
    end
  end 
end
 max_sub_matrix(arr)