#fibonnaci series
n = ARGV[0].to_i
def fibonacci_without_dp(n)
if n ==0 
  return 0
end
if n == 1
	return 1
end
return (fibonacci_without_dp(n-1) + fibonacci_without_dp(n-2))
end

#puts fibonacci_without_dp(n)


def fibonacci_with_dp(n)

dp = Array.new(n)

if n ==0 
  return 0
end
if n == 1
	return 1
end

dp[0] =0
dp[1] = 1

for i in 2..n-1
	dp[i] = dp[i-1] + dp[i-2]
end

return dp[n-1]
end

puts fibonacci_with_dp(n)

FIB = Array.new(n)
def fibonacci_with_dp_top_down(n)
if n ==0 
  return 0
end
if n == 1
	return 1
end
if !FIB[n].nil? 
	return FIB[n]
else
	return FIB[n] = (fibonacci_without_dp(n-1) + fibonacci_without_dp(n-2))
end
end
#puts fibonacci_with_dp_top_down(n)
#puts FIB.inspect