s = "23#(2)24#25#26#23#(3)"
s = "2110#(2)"
s = "1(2)23(3)"
def frequency(s)
arr  = []
hash = {}
hash["1"] = 'a'
hash["2"] = 'b'
hash["3"] = 'c'
hash["4"] = 'd'
hash["5"] = 'e'
hash["6"] = 'f'
hash["7"] = 'g'
hash["8"] = 'h'
hash["9"] = 'i'
hash["10#"] = 'j'
hash["11#"] = 'k'
hash["12#"] = 'l'
hash["13#"] = 'm'
hash["14#"] = 'n'
hash["15#"] = 'o'
hash["16#"] = 'p'
hash["17#"] = 'q'
hash["18#"] = 'r'
hash["19#"] = 's'
hash["20#"] = 't'
hash["21#"] = 'u'
hash["22#"] = 'v'
hash["23#"] = 'w'
hash["24#"] = 'x'
hash["25#"] = 'y'
hash["26#"] = 'z'
parenthes_encountered = nil
dupes_encountered = nil
how_many = nil
str = s
i = str.length - 1
while i >= 0
c = str[i]
if c == ')'
parenthes_encountered = 1
elsif c == '#'
dupes_encountered = 1
elsif c == '('
parenthes_encountered = nil
else
	if !parenthes_encountered.nil?
	how_many = c
	elsif !dupes_encountered.nil?
		if !how_many.nil?
		how_many.to_i.times do
		arr <<  hash[str[i-1] + str[i] + "#"]
		end
		how_many = nil
		else
		arr << hash[str[i-1] + str[i] + "#"]
		end
	dupes_encountered = nil
	i = i - 2
	next
	elsif dupes_encountered.nil? && parenthes_encountered.nil?
		if !how_many.nil?
                how_many.to_i.times do
                arr <<  hash[str[i]]
                end
		how_many = nil
		else
		arr << hash[str[i]]
		end
	end
end
i = i - 1
end
new_hash = Hash.new(0)
arr.each{|a|
if new_hash[a].nil?
new_hash[a] = 1
else
new_hash[a] = new_hash[a] + 1
end
}
hash.values.each{|a|
if new_hash[a] == 0
new_hash[a] = 0
end
}
puts new_hash.sort.to_h.values
end
frequency(s)

