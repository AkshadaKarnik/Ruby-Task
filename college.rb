module College

	#getting college details
	
	def put_college_details

		puts "College name: "
		@@college_name = gets

		puts "College address: "
		@@college_address = gets
	end

	def show_college_details
		puts "Name of the college is: #{@@college_name}"
		puts "Address of the college is: #{@@college_address}"
	end

end



 