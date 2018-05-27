# @param {Integer[]} nums
# @param {Integer} k
# @return {Boolean}
def contains_nearby_duplicate(nums, k)
  length = nums.length
  nums.each_with_index do |e, i|
    j = i + 1
    for t in j..length-1
      p "t=#{t}"
      if nums[i] == nums[t] && (i - t).abs <= k
        return true
      end
    end
  end
  return false
end
