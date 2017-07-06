#This program is meant to give you an understanding on what Edit Distance is
#str1=First String
#str2 = Second String
#m = length of first
#n= length of second
str1 = ARGV[0].gsub(' ','-')
str2 = ARGV[1].gsub(' ','-')
m = str1.length
n = str2.length
def edit_distance_without_dp(str1,str2,m,n)
	if m == 0 
		return n
	end
	if n == 0
		return m
	end
	if str1[m-1] == str2[n-1]
		return edit_distance_without_dp(str1,str2,m-1,n-1) 
	end
	return (1 + min(edit_distance_without_dp(str1,str2,m-1,n),edit_distance_without_dp(str1,str2,m,n-1),edit_distance_without_dp(str1,str2,m-1,n-1)))

end

def min(a,b,c)
%W(#{a} #{b} #{c}).min.to_i
end
puts edit_distance_without_dp(str1,str2,m,n)
