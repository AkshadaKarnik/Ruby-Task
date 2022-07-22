#Main file of College Management System
#Used modules are Student, College
$LOAD_PATH << '.'

require "student"
require "college"

class CollegeManagement

	include Student
	include College

	puts "Let's start the process: "

	puts "If you're a new user, enter 1: "
	puts "If you're already a registered user, enter 0"
	@@user_log_check = gets

	object1 = CollegeManagement.new

	#Checking if the user/student is old or new
	if(@@user_log_check)
		object1.put_college_details
		object1.signUp_student_details
	else
		object1.login_old_student
	end

	#For displaying the details of the students during the registration
	object1.show_college_details
	object1.show_student_details

	#For logging out of a system
	object1.logout
end



