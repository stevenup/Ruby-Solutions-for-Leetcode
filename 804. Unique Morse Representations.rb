#!/usr/bin/ruby

def unique_morse_representations(words)
	morses = [".-","-...","-.-.","-..",".","..-.","--.","....","..",".---","-.-",".-..","--","-.","---",".--.","--.-",".-.","...","-","..-","...-",".--","-..-","-.--","--.."]
    morse_hash, unique_hash = {}, {}
	('a'..'z').to_a.zip(morses) { |a, b| morse_hash[a.to_sym] = b }
	words.each do |word|
		str = ''
		word.chars.each { |c| str += morse_hash[c.to_sym] }
		unique_hash[str.to_sym] = 1
	end
	unique_hash.count
end

p unique_morse_representations(["gin", "zen", "gig", "msg"])