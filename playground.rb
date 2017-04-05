# if you have not installed the needed gems, please do the following:
# gem install sqlite3
# gem install activerecord

require "sqlite3"
require "active_record"

# this line configures ActiveRecord to connect to a sqlite3 database in the same folder named "students.sqlite3"
ActiveRecord::Base.establish_connection(:adapter => "sqlite3", :database => "./students.sqlite3")

# This sets up ActiveRecord to use Ruby OOP with SQL data
class Student < ActiveRecord::Base
end

####################################
# Write your test code here

# 1. Create a new student using new and save
	# student = Student.new(name: "Mike Jones", email: "MJones@gmail.com", age: "14")
	# student.save
	# p student

# 2. Create a new student using create
	# student = Student.create(name: "Martha May", email: "MarthaRocks@hotmail.co.uk", age: "15")
	# p student

# 3. Select all students
	#p Student.all
	# students = Student.all
	# p students.count
	# p students[5]
# pay attention to the object that is returned to you, is it a Student object or Active Record relation object?

# Why can't you do Student.name or Student.email?

# 4. Select the first student
	#p Student.first
# pay attention to the object that is returned to you, is it a Student object or Active Record relation object?

# 5. Select the last student
	#p Student.last
# pay attention to the object that is returned to you, is it a Student object or Active Record relation object?

# 6. Use each to iterate through the #<ActiveRecord::Relation> object to display the name of each student
	# Student.all.each do |student|
	# 	p student.name
	# end


# 7. Find student by the name Dr. Lois Pfeff using where.
	# students = Student.where(name: "Dr. Lois Pfeff")
	#  p students

# pay attention to the object that is returned to you, is it the Student object or Active Record relation object?

# What will the following return to you? (remember to comment out the code!)
	 # p students.ids
	# p student.name
	# p student.email
	# p student.age


# 8. Find student by name using find_by
# pay attention to the object that is returned to you, is it the Student object or Active Record relation object?
	# student	= Student.find_by(name: "Dr. Lois Pfeff")
	# p student

# What will the following return to you?
	# p student.id
	# p student.name
	# p student.email
	# p student.age

# Do research on the difference between "where" and "find_by".

# 9. Find the student with id = 7 using find and find_by

		# p Student.find(7)
		# p Student.find_by(id: 7)

# pay attention to the object that is returned to you, is it the User object or Active Record relation object?


# 10. Update information for student with id = 5 using student.email and save. Change the student's email to elsie@example.com
# student = Student.find(5)
# p student
# student.email = "newemail@domain.com"
# student.save
# p student



# 11. Now use update to update this student's age to 21.

# student.update(age: 21)
# p student

# 12. Delete student with id 21 using delete
# student = Student.find(21)
# student.delete
# p Student.all.count

# # 13. Delete student with id 22 using destroy
# student = Student.find(22)
# student.destroy
# p Student.all.count