$LOAD_PATH << '.'
require 'signUp'
#require 'login'
require 'logout'
require 'byebug'
class Main
	def start_system
		obj1 = SignUp.new
		#obj2 = Login.new
		obj3 = Logout.new
		puts "\n"
		puts "Welcome User!\n\n"
		while 1
			puts "Enter 1 for signUp:"
			puts "Enter 2 for login:"
			puts "Enter 3 for logout:\n\n"
			puts "Enter your choice.."
			choice =gets.to_i
			case choice
			when 1
				obj1.register
			#when 2 
			when 3
				obj3.logout
				break
			else
				puts "Invalid Choice\n\n"
			end
		end
	end
end
Main.new.start_system

 