#Find longest palindrome substring
#Not able to think recursively


str= ARGV[0]
i = 0
j = str.length - 1
MAX = 0
def lpsub(str,i,j)
if i == j
	return 1
end
if str[i] == str[j] && i+1 ==j 
	return 2
end
if str[i] == str[j]
	return (lpsub(str,i+1,j-1) + 2)
else
 return lpsub(str,i-1,j-1) 
end 
end
puts lpsub(str,i,j)