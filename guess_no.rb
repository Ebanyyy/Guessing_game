x = rand(100)
puts x

chance = 1
while chance <= 6 
	answer = gets.chomp.to_i
	puts answer

	if answer > x 
		puts "Number is high"
	elsif answer < x 
		puts "Number is low"
	else answer == x 
		puts "Correct"
		break
	end

	puts "chances: #{chance}"
	chance += 1
	

end