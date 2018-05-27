# @param {Integer[]} nums
# @return {Integer}
def array_pair_sum(nums)
  sum = 0
  nums.sort.each_with_index do |v, i|
    sum += v if i % 2 == 0
  end
  sum
end

p array_pair_sum([1,4,2,3])
