#!/usr/bin/ruby

def num_jewels_in_stones(j, s)
	s.chars.count { |c| j.include?(c) }
end
	
p num_jewels_in_stones("aA", "aAAbbbb")