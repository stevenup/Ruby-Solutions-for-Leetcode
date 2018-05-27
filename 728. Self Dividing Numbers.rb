# @param {Integer} left
# @param {Integer} right
# @return {Integer[]}
def self_dividing_numbers(left, right)
  result = []
  (left..right).each do |ele|
    divided = true
    digits = separate_number(ele)
    if digits.include?(0)
      divided = false
    else
      digits.each do |el|
        unless ele % el == 0
          divided = false
        end
      end
    end

    result << ele if divided
  end
  result
end

# number between 1-10000
def separate_number(number)
  digits = []
  while number > 0 do
    digit = number % 10
    number /= 10
    digits << digit
  end
  digits
end

# Graceful Leetcode
# def self_dividing_numbers2(left, right)
#     result = []
#     (left..right).each { |num| result << num if num.to_s.chars.all? { |digit| digit != '0' and num % digit.to_i == 0 }}
#     return result
# end
