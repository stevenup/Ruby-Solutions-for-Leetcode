# @param {Integer} num
# @return {Integer}

# ## Solution 1
# def find_complement(num)
#   flipped = num.to_s(2).chars.map { |e| 1- e.to_i }
#   result = flipped.join.to_i(2)
# end

## Solution 2
def find_complement(num)
  num.to_s(2).tr('01', '10').to_i(2)
end

p find_complement(4)
