require 'pry-byebug'

def bubble_sort(numbers)
	sorted = []
	numbers.each_with_index {|num, i|
		#binding.pry
			following = numbers[i + 1]
			puts "just a cottin picking second"
			puts "lap: #{i}"
			puts "num: #{num}"
			puts "following: #{following}"
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
			p numbers
			p "---"
	}
	numbers
end

p bubble_sort([4,3,78,2,0,2])
# expected [0,2,2,3,4,78]