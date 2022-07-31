require 'byebug'
module CollegeModule
	class SignUp
		attr_accessor :name, :age, :mob, :course, :email, :password, :clg_name, :clg_addr, :stud_record

		def initialize	 
			@stud_record = []
		end
		#byebug
		#def stud_id
		#	@id = 
		#end
		def stud_name
			puts "Enter name: "
			@name = gets.chomp
			#byebug
			if @name == ""
				return stud_name
			end
		end

		def stud_age
			puts "Enter age: "
			@age = gets.chomp
			if @age == ""
				return stud_age
			end
		end

		def stud_mob
			puts "Enter contact no. : "
			@mob = gets.chomp
			#I've used two ifs because I had to give the message also
			if @mob==""
				return stud_mob
			end
			unless @mob =~ /^[789]\d{9}$/
				puts "Invalid mobile number"
				puts "\n"
				return stud_mob
			end
		end

		def stud_course
			puts "Enter course: "
			@course = gets.chomp 
			if @course == ""
				return stud_course
			end
		end

		def stud_email
			puts "Enter email: "
			@email = gets.chomp
			if @email==""
				return stud_email
			end
			unless @email =~  /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\Z/i
				puts "Invalid email"
				puts "\n"
				return stud_email
			end
		end

		def stud_password
			puts "Set password in the format: a-z]|[A-Z])0-9_-]{6,40}"
			@password = gets.chomp 
			unless @password =~ /^[([a-z]|[A-Z])0-9_-]{6,40}$/
				puts "Invalid, Please set according to the format given.."
				puts "\n"
				return stud_password
			end
		end

		def stud_clg_name
			puts "Enter college name: "
			@clg_name = gets.chomp
			if @clg_name == ""
				return stud_clg_name
			end
		end

		def stud_clg_address
			puts "Enter college address: "
			@clg_addr = gets.chomp
			if @clg_addr == ""
				return stud_clg_address
			end
		end

		def show_record
			@stud_record = {Name: name, Age: age, Contact: mob, Course: course, Email: email, Password: password, College_Name: clg_name, College_Address: clg_addr}
		end
	end
end

#--------------------------------------------------------------------------------------------------

=begin 

Remember:- 
problem 1)-> when tried to use local variable even on using attr_accessor then I got the 
stud_record as {:Name=>nil}

problem 2)-> when tried to used the @@stud_record directly to main file, @@stud_record didn't 
worked as it was giving the error as Uninitialized variable (NameError)(maybe we could use here 
the attr_accessor so as to get its value in main.rb file)

case 1)-> When I used attr_accessor as used above for getting data into stud_record 
and obviously used instance variables in every def, then I got the result as:
{:Name=>"sam", :Age=>"20", etc}

case 2)-> BUT..When I simply used the instance variables(NOT local variables as facing dificulty 
in accessing them in stud_record) in every method (without using attr_accessor), then I accessed 
them by:
stud_record = {Name: @name, Age: @age, Contact: @mob,......, College_Address: @clg_addr}
then result I got was:
{:@name=>"sam", :@age=>"20", etc}

=end

#-------------------------------------------------------------------------------------------------