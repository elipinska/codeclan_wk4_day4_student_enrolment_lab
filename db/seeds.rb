require_relative('../models/student')
require_relative('../models/house')

Student.delete_all()
House.delete_all()

air = House.new({'name' => 'Air', 'url'=>''})
air.save()

water = House.new({'name' => 'Water', 'url'=>''})
water.save()

fire = House.new({'name' => 'Fire', 'url'=>'blah'})
fire.save()

earth = House.new({'name' => 'Earth', 'url'=>'boo'})
earth.save()

student1 = Student.new({'first_name'=> 'Harry', 'second_name'=>'Potter', 'house'=>air.id, 'age'=>'15'})
student1.save()

student2 = Student.new({'first_name'=> 'Ron', 'second_name'=>'Weasley', 'house'=>fire.id, 'age'=>'14'})
student2.save()

student3 = Student.new({'first_name'=> 'Hermione', 'second_name'=>'Granger', 'house'=>water.id, 'age'=>'16'})
student3.save()
