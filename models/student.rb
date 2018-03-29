require('pry')
require_relative('../db/sql_runner')

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

   def save()
     sql = "INSERT INTO students
     (first_name, second_name, house, age)
     VALUES
     ($1, $2, $3, $4)
     RETURNING id"

     values = [@first_name, @second_name, @house, @age]

     result = SqlRunner.run(sql, values)
     @id = result[0]['id'].to_i
   end

   def self.delete_all()
     sql = 'DELETE FROM students;'

     SqlRunner.run(sql)
   end

   def self.all()
     sql = 'SELECT * from students;'

     students = SqlRunner.run(sql)

     return students.map {|student| Student.new(student)}
   end

   def self.find(id)
     sql = 'SELECT * FROM students
            WHERE id = $1'

    values = [id]

    result = SqlRunner.run(sql, values)

    return Student.new(result[0])

   end



end
