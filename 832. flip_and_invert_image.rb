# @param {Integer[][]} a
# @return {Integer[][]}
def flip_and_invert_image(a)
  a.each { |arr| arr.reverse!.map! { |ele| 1 - ele }}
end

p flip_and_invert_image([[1,1,0],[1,0,1],[0,0,0]])
