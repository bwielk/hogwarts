class House 

  attr_reader :id
  attr_accessor :name, :url

  def initialize(options)
    @id = options["id"]
    @name = options["name"]
    @url = options["url"]
  end

  def save()
      sql = "INSERT into houses (name, url) VALUES 
      ('#{@name}', '#{@url}') RETURNING * ;"
      result = SqlRunner.run(sql)
      @id = result[0]['id'].to_i
  end

  def self.delete_all()
    sql = "DELETE FROM houses;"
    SqlRunner.run(sql)
  end

  def self.all
    sql = "SELECT * FROM houses;"
    return House.get_all(sql)
  end

  def self.find_by_id(id)
    sql = "SELECT * FROM houses WHERE id = #{id}"
    result = SqlRunner.run(sql)
    return House.new(result[0])
  end


  def self.get_all(sql)
    result = SqlRunner.run(sql)
    return result.map{|house| House.new(house)}
  end
end