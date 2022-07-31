#Creating a .csv to store the student data
$LOAD_PATH << '.'
require 'csv'
require 'signUp'
require 'byebug'

module CollegeModule
	class StudCsv
		include CollegeModule
		#byebug
		hash_obj = StudCsv::SignUp.new
		my_hash = hash_obj.show_record
		#byebug
		def hash_to_csv
			csv_obj = CSV.new('stud_details.csv', 'a+')
			CSV.open('stud_details.csv', 'a+') do |csv_obj|
				csv_obj << first.keys # adds the attributes name on the first line
				 my_hash.each do |my_hash|
				 	csv_obj << my_hash.values
      	end
      end

      CSV.foreach('stud_details.csv', 'a+') do |csv_obj|
	  	puts csv_obj.inspect
			end

			CSV.generate do |csv_obj|
				csv_obj << ["student_name", "student_age", "student_mob", "student_course", "student_email", "student_password", "college_name", "college_address"]
				csv_obj << [name, age, mob, course, email, password, clg_name, clg_addr]
			end
			csv_obj.close
    end
	end
end

 