# @param {Integer[]} nums
# @return {Integer}
def find_max_consecutive_ones(nums)
	result = []
	count = 0
	nums.each do |n|
		n == 1 ? count+=1 : count = 0
		result << count
	end
	result
end

# One-liner solution
# nums.join.split('0').map(&:size).max || 0

p find_max_consecutive_ones([1,1,0,1,1,1])
