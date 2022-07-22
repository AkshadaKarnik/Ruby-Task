module Student

	#getting student's details of registration

	#If the student is a new user and has to signUp/register

	def signUp_student_details	#an instance method of this Student module
		puts "For starting the registration, please press 1: "
		i = gets
		if(i)
			while 1
				puts "Start entering the details: "

				puts "Your name: "
				@@student_name = gets

				puts "Your age: "
				@@student_age = gets

				puts "Your contact/mob no. : "
				@@student_mob = gets
				if(@@student_mob =~ /^[789]\d{9}$/)
				else
					puts "Not a valid number"
					puts "SignUp unsuccessful"
					break
				end

				puts "Your course of study: "
				@@student_course = gets

				puts "Your email: "
				@@student_email = gets
				if(@@student_email =~ /^(([A-Za-z0-9]*\.+*_+)|([A-Za-z0-9]+\-+)|([A-Za-z0-9]+\+)|([A-Za-z0-9]+\+))*[A-Z‌​a-z0-9]+@{1}((\w+\-+)|(\w+\.))*\w{1,63}\.[a-zA-Z]{2,4}$/i)
				else
					puts "Please mention the correct email format"
					puts "SignUp unsuccessful"
					break
				end
				puts "SignUp successfully"
				puts "\n"
				break
			end
		else
			puts "Please press 1 so as to start registration"
		end
	end

=begin
	#If the user/student has already signedUp and only has to login
	def login_old_student
		$i = 0
		puts "Please press 1 so as to start logging in.."
		$i = gets

		while $i do

			puts "Your registered email: "
			@@email = gets 
			if(email == )	##Have to match inputted email from .csv record TO-DO
				continue
			else
				puts "Please provide the registered email"

			puts "Please provide the password associated with it: "
			@@password = gets	
			if(password == )	##Have to match this inputted password form .csv record TO-DO
				continue
			else
				puts "Please provide the valid password"
		end

		puts "Welcome again!!"
	end
=end

#Student Logout Method
	def logout
		puts "For logging out please type a no. between 0 to 10 "
		log = gets
		case log
		when 0..10
			puts "Logout successfully"
		else
		puts "Please provide a no. between 0-10 to logout"
	end
	
	#Displaying Student Details
	def show_student_details	#an instance method of this Student module
		puts "Student's name is: #{@@student_name}"
		puts "Student's age is: #{@@student_age}"
		puts "Student's contact is: #{@@student_mob}"
		puts "Student's course is: #{@@student_course}"
		puts "Student's email is: #{@@student_email}"
		puts "\n"      
	end

end



 