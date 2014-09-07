def is_divisible?(num)
	a=*(1..20)
	a.each do |a|
		if num % a != 0
			return false
		end
	end
	return true		
end

def find_smallest
	num = 20
	until num == 1000000000
		if is_divisible?(num)
			puts num
			return num
		else num += 20
		end
	end
end

find_smallest

