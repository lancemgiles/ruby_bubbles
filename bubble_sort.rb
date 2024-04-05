def bubble_sort_lvl_1(numbers)
	numbers.each_with_index {|num, i|
			following = numbers[i + 1]
			if following == nil
				return numbers
			end

			if (num < following)
				numbers[i] = num
			else
				numbers[i] = following
				numbers[i + 1] = num
			end
			i += 1
	}
	numbers
end

def bubble_sort(numbers)
	numbers.each {|num| 
		bubble_sort_lvl_1(numbers)
	}
end

p bubble_sort([4,3,78,2,0,2])
# expected [0,2,2,3,4,78]