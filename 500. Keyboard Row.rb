def find_words(words)
  letters = ['qwertyuiop', 'asdfghjkl', 'zxcvbnm']
  words.map do |word|
    word if word.downcase.chars.all? { |ele| letters[0].include?(ele) } ||
            word.downcase.chars.all? { |ele| letters[1].include?(ele) } ||
            word.downcase.chars.all? { |ele| letters[2].include?(ele) }
  end.compact
end

p find_words(["Hello", "Alaska", "Dad", "Peace"])
