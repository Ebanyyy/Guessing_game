scoring_card = Hash.new
loop do

    puts "Guessing Game"
    player_name = gets.chomp
    puts "Hello #{player_name}"

	x = rand(100)
	#puts x
	puts "Guess random number 1-100"

	#tries = 1
	chance = 0
	guess = []

	
	while chance <= 5
		answer = gets.chomp.to_i
		puts answer

	    if answer > x 
		    puts "Number is high"
	      elsif answer < x 
		    puts "Number is low"
	      else answer = x 
		    puts "Correct"
	      break
	    end
        
		guess << answer
		chance += 1
		#tries += 1
	
	  
	    puts "chances: #{chance}"
	    #puts "tries: #{tries}"
		puts "scoring_card"

		scoring_card[player_name] = chance

		scoring_card.each do |chance| 
		puts "#{chance}"
	    end
    end


	   puts "Do you want to play again? y/n"
	   continue = gets.chomp.downcase
	   if continue != "y"
	   	 break
	   #break if continue != "y"
	end
end
	