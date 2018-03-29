require_relative('../models/student')

Student.delete_all()

student1 = Student.new({'first_name'=> 'Harry', 'second_name'=>'Potter', 'house'=>'Air', 'age'=>'15'})
student1.save()

student2 = Student.new({'first_name'=> 'Ron', 'second_name'=>'Weasley', 'house'=>'Fire', 'age'=>'14'})
student2.save()

student3 = Student.new({'first_name'=> 'Hermione', 'second_name'=>'Granger', 'house'=>'Water', 'age'=>'16'})
student3.save()
