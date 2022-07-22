module Validation
	def logout
		puts "For logging out please type a no. between 0 to 10 "
		$log = gets
		case $log
		when 0..10
			puts "Logout successfully"
		else
		puts "Please provide a no. between 0-10 to logout"
	end
	
end






