
def judge_circle(moves)
	sum = 0
	moves.each do |m|
		case m
		when R sum ++
			when 'L' sum --
			when 'D' sum -- 2
			when 'U' sum ++ 2
		else
		end
	end
	sum == 0 ? true : false
end
