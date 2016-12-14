require('pry')
require_relative('../models/student')


malfoy = Student.new({
  "first_name" => "Draco",
  "second_name" => "Malfoy",
  "age" => 16,
  "house" => "Slytherin"
  })
malfoy.save()

luna = Student.new({
  "first_name" => "Luna",
  "second_name" => "Lovegood",
  "age" => 15,
  "house" => "Ravenclaw"
  })
luna.save()

ron = Student.new({
  "first_name" => "Ron", 
  "second_name" => "Weasley",
  "age" => 16,
  "house" => "Gryffindor"
  })
ron.save()

binding.pry
nil