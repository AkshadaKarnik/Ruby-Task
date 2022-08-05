class Logout
	def logout	#instance method
		puts "Are you sure you wanna logout?"
		puts "If Yes, please enter 3  "
		out = gets.to_i
		puts "\n"
		unless out == 3
			puts "Invalid number, Please try again...\n\n"
			logout
		else
			puts "Logged out successfully."
			puts "Thanks!!\n\n"
		end
	end
end

#----------------------------------------------------------------------------------------------------

=begin 
Since, I had to give puts for user understanding that's why I used this much code (unless, else) instead of
using ternary or other option.
=end

#----------------------------------------------------------------------------------------------------