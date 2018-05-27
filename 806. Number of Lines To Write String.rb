# @param {Integer[]} widths
# @param {String} s
# @return {Integer[]}
def number_of_lines(widths, s)
  widths_hash = {}
  result = [1, 0]
  ('a'..'z').to_a.zip(widths) { |a, b| widths_hash[a.to_sym] = b }
  s.each_char do |ele|
    result[1] += widths_hash[ele.to_sym]
    if result[1] > 100
      result[1] = widths_hash[ele.to_sym]
      result[0] += 1
    end
  end
  result
end

widths = [10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10]
S = "abcdefghijklmnopqrstuvwxyz"

p number_of_lines(widths, S)
