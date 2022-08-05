require 'byebug'
require 'csv'
class SignUp
	#function which is managing all the methods
	def register
		stud_id
		stud_name
		stud_age
		stud_mob
		stud_course
		stud_email
		stud_password
		stud_clg_name
		stud_clg_address
		show = show_record
		puts show
		puts "\n"
		check_details
	end
	def stud_id
		#options = {:encoding => 'UTF-8', :skip_blanks => true}
		@id = 0
		CSV.foreach('stud_details.csv') do | row |
			#puts @id
			@id += 1
		end
	end

	def stud_name
		puts "Enter name: "
		@name = gets.chomp
		if @name == ""
			stud_name
		end
	end

	def stud_age
		puts "Enter age: "
		@age = gets.chomp
		if @age == ""
			stud_age
		end
	end

	def stud_mob
		puts "Enter contact no. : "
		@mob = gets.chomp
		#I've used two ifs because I had to give the message also
		if @mob==""
			stud_mob
		end
		unless @mob =~ /^[789]\d{9}$/
			puts "Invalid mobile number \n\n"
			stud_mob
		end
	end

	def stud_course
		puts "Enter course: "
		@course = gets.chomp 
		if @course == ""
			stud_course
		end
	end

	def stud_email
		puts "Enter email: "
		@email = gets.chomp
		if @email==""
			stud_email
		end
		unless @email =~  /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\Z/i
			puts "Invalid email \n\n"
			stud_email
		end
	end

	def stud_password
		puts "Set password in the format: a-z]|[A-Z])0-9_-]{6,40}"
		@password = gets.chomp 
		unless @password =~ /^[([a-z]|[A-Z])0-9_-]{6,40}$/
			puts "Invalid, Please set according to the format given.. \n\n"
			stud_password
		end
	end

	def stud_clg_name
		puts "Enter college name: "
		@clg_name = gets.chomp
		if @clg_name == ""
			stud_clg_name
		end
	end

	def stud_clg_address
		puts "Enter college address: "
		@clg_addr = gets.chomp
		if @clg_addr == ""
			stud_clg_address
		end
	end

	#Displaying a record so as to apply check_details
	def show_record
		@stud_record = {Id: @id, Name: @name, Age: @age, Contact: @mob, Course: @course, Email: @email, Password: @password, College_Name: @clg_name, College_Address: @clg_addr}
	end

	#For checking the details
	def check_details
		while 1
			puts "please check your above mentioned details: \n \n"
			puts "press 1 to SAVE"
			puts "press 2 to UPDATE"
			puts "press 3 to EXIT\n\n"
			choice = gets.to_i
			case choice
			when 1
				save_details
				break
			when 2
				update_details
				break
			when 3
				puts "Exited check_details\n\n"
				break
			else
				puts "Invalid choice\n\n"
			end
		end
	end

	#To save the details
	def save_details
		CSV.open('stud_details.csv', 'a+') do |my_csv| 
			my_csv << %w[Id Name Age Contact Course Email Password College_Name College_Address] if my_csv.count < 1
			my_csv << [@id, @name, @age, @mob, @course, @email, @password, @clg_name, @clg_addr]
		end
		#Only have to display the saved data of my_csv, so as to call check_details again 
		return check_details
	end

	#To update the details
	def update_details
		while 1
			puts "press the following numbers for updation"
			puts "1 -> name"
			puts "2 -> age"
			puts "3 -> contact"
			puts "4 -> course"
			puts "5 -> email"
			puts "6 -> password"
			puts "7 -> college_name"
			puts "8 -> college_address"
			puts "9 -> exit from updation"
			choice = gets.to_i
			case choice
			when 1
				@name = gets.chomp
			when 2
				@age = gets.chomp
			when 3
				@mob = gets.chomp
			when 4
				@course = gets.chomp
			when 5
				@email = gets.chomp
			when 6
				@password = gets.chomp
			when 7
				@clg_name = gets.chomp
			when 8
				@clg_addr = gets.chomp
			when 9
				puts "exited from updation \n\n"
				break
			else
				puts "Invalid choice"
			end
		end
		CSV.open('stud_details.csv', 'a+') do |my_csv| 
			my_csv << %w[Id Name Age Contact Course Email Password College_Name College_Address]
			my_csv << [@id, @name, @age, @mob, @course, @email, @password, @clg_name, @clg_addr]
		end
		#Only have to display the updated data of my_csv, so as to call check_details again 
		return check_details
	end
end

 