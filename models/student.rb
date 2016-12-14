require_relative('../db/sql_runner')
require('pg')


class Student

  attr_accessor :first_name, :second_name, :age, :house_id
  attr_reader :id

  def initialize(options)
    @id = options['id'].to_i
    @first_name = options['first_name']
    @second_name = options['second_name']
    @age = options['age'].to_i
    @house_id = options['house_id'].to_i
  end

  def save()
    sql = "INSERT into students (first_name, second_name, house_id, age) VALUES 
    ('#{@first_name}','#{@second_name}',#{@house_id}, #{@age}) RETURNING * ;"
    result = SqlRunner.run(sql)
    @id = result[0]['id'].to_i
  end

  def self.all()
    sql = "SELECT * FROM students;"
    return Student.get_all(sql)
  end

  def self.find_by_id(id)
    sql = "SELECT * FROM students WHERE id = #{id}"
    result = SqlRunner.run(sql)
    return Student.new(result[0])
  end

  def self.delete_all()
    sql = "DELETE FROM students;"
    SqlRunner.run(sql)
  end

  def self.get_all(sql)
    result = SqlRunner.run(sql)
    return result.map{|student| Student.new(student)}
  end

  def get_house_name()
    sql = "SELECT houses.name FROM houses
    INNER JOIN students
    ON students.house_id = houses.id
    WHERE students.id = #{@id};"
    result = SqlRunner.run(sql)
    puts result
    return result[0]["name"]
  end

  def get_house_url()
    sql = "SELECT houses.url FROM houses
    INNER JOIN students
    ON students.house_id = houses.id
    WHERE students.id = #{@id};"
    result = SqlRunner.run(sql)
    puts result
    return result[0]["url"]
  end


end