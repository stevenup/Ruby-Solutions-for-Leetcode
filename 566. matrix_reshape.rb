# @param {Integer[][]} nums
# @param {Integer} r
# @param {Integer} c
# @return {Integer[][]}
def matrix_reshape(nums, r, c)
  return nums if nums.flatten.count != r * c
  nums.flatten.each_slice(c).to_a
end

p matrix_reshape([[1,2],[3,4]], 1, 4)
