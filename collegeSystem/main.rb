$LOAD_PATH << '.'
require 'signUp'
#require 'login'
require 'logout'
require 'student_csv'
require 'byebug'

class Main
	include CollegeModule
	def start_system
		obj1 = Main::SignUp.new
		#obj2 = Main::Login.new
		obj3 = Main::Logout.new
		puts "\n"
		puts "Welcome User!"
		puts "\n"
		while 1
			puts "Enter 1 for signUp: "
			puts "Enter 2 for login: "
			puts "Enter 3 for logout: "
			puts "\n"
			puts "Enter your choice.."
			choice =gets.to_i
			case choice
			when 1
				obj1.stud_name
				puts "\n"
				obj1.stud_age
				puts "\n"
				obj1.stud_mob
				puts "\n"
				obj1.stud_course
				puts "\n"
				obj1.stud_email
				puts "\n"
				obj1.stud_password
				puts "\n"
				obj1.stud_clg_name
				puts "\n"
				obj1.stud_clg_address
				puts "\n"
				show = obj1.show_record
				puts show
				puts "\n"
			#when 2 
			when 3
				obj3.logout
				break
			else
				puts "Invalid Choice"
				puts "\n"
			end
		end
	end
	Main::StudentCsv.new('stud_details.csv','a+')
end

#Creating a Main object so as to call the start_system
main_obj = Main.new
main_obj.start_system

		
 