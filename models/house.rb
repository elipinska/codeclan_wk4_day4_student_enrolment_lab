require('pry')
require_relative('../db/sql_runner')

class House

  attr_reader :id
  attr_accessor :name, :url

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @name = options['name']
    @url = options['url']
  end

  def save()
    sql = "INSERT INTO houses
    (name, url)
    VALUES ($1, $2)
    RETURNING id;"
    values = [@name, @url]

    result = SqlRunner.run(sql, values)
    @id = result[0]['id'].to_i
  end

  def self.all()
    sql = "SELECT * FROM houses;"
    houses = SqlRunner.run(sql)
    return houses.map{ |house| House.new(house)}
  end

  def self.delete_all()
    sql = "DELETE FROM houses;"
    SqlRunner.run(sql)
  end

  def self.find(id)
    sql = "SELECT * FROM houses
            WHERE id = $1;"
    values = [id]

    house = SqlRunner.run(sql, values)
    return House.new(house[0])
  end

end
