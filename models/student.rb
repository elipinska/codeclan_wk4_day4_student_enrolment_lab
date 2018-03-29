require('pry')

class Student

  attr_accessor :first_name, :second_name, :house, :age
  attr_reader :id

   def initialize(options)
     @id = options['id'].to_i if options['id']
     @first_name = options['first_name']
     @second_name = options['second_name']
     @house = options['house']
     @age = options['age'].to_i
   end



end
