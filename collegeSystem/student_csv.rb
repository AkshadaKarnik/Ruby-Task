$LOAD_PATH << '.'
require 'csv'
require 'signUp'
require 'byebug'

module CollegeModule
	class StudentCsv
		# include CollegeModule
		#attr_accessor :name, :age, :mob, :course, :email, :password, :clg_name, :clg_addr, :stud_record
		attr_accessor :file_nm, :mode_nm
		def initialize(file_nm, mode_nm)
			@file_nm = file_nm
			@mode_nm = mode_nm
			#byebug
			puts "#{file_nm} #{mode_nm}"
		end
	end
end