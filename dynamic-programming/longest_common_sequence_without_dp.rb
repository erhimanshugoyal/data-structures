#Longest Common Subsequence Problem Solved using Ruby
#X = m[X(1..m)]
#Y = n[Y(1..n)]
#Eg. ABCD and ACD are given, the LONGEST COMMON SUBSEQUENCE would be ACD. HERE WE WOULD BE PRINTING ONLY THE LENGTH
i = 0
j = 0
str1 = ARGV[0]
str2 = ARGV[1]
m = str1.length
n = str2.length

def lcs_without_dp(str1,i,m,str2,j,n)
	if i == m || j==n
	return 0
	elsif str1[i] == str2[j] 
		return 1 + lcs_without_dp(str1,i+1,m,str2,j+1,n).to_i
	else
	return %W(#{lcs_without_dp(str1,i+1,m,str2,j,n)} #{lcs_without_dp(str1,i,m,str2,j+1,n)}).max
	end
end

puts lcs_without_dp(str1,0,m,str2,0,n)
