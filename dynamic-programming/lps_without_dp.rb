#find the longest plaindromic subsequence

str= ARGV[0]
i = 0
j = str.length - 1

def lps_without_dp(str,i,j)
	if i == j
	return 1
	end
	if str[i] == str[j] && i + 1 == j
		return 2
	end
	if str[i] == str[j]
	return (lps_without_dp(str, i +1, j - 1) + 2)
	end
	if str[i] != str[j]
		return [lps_without_dp(str,i,j-1), lps_without_dp(str,i+1,j)].max
	end
end

puts lps_without_dp(str,i,j)